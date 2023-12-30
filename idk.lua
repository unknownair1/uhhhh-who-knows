wait(1)
firstquest = true
autostack = true

local Settings = {Tables = {Forms = {'SSJB4','SSJBUI','True God of Creation','True God of Destruction','Super Broly','LSSJG','LSSJ4','SSJG4','LSSJ3','Mystic Kaioken','LSSJ Kaioken','SSJR3','SSJB3','God Of Destruction','God Of Creation','Jiren Ultra Instinct', 'Mastered Ultra Instinct','Godly SSJ2', 'Ultra Instinct Omen', 'Evil SSJ','Blue Evolution','Dark Rose','Kefla SSJ2','SSJ Berserker','True Rose', 'SSJB Kaioken','SSJ Rose', 'SSJ Blue','Corrupt SSJ','SSJ Rage','SSJG','SSJ4','Mystic','LSSJ','SSJ3','Spirit SSJ','SSJ2 Majin','SSJ2','SSJ Kaioken','SSJ','FSSJ','Kaioken' 
}};Variables = {Farm = false}}
setmetatable(Settings, {__index = function() warn('Dumbass') end})
local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill
local plr = game.Players.LocalPlayer
local player = game:GetService("Players").LocalPlayer
local events = game:GetService("ReplicatedStorage").Package.Events
local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")
local data = game.ReplicatedStorage.Datas[player.UserId]
local skills = game.ReplicatedStorage.Package.Skills
local events = game.ReplicatedStorage.Package.Events
local rebirthRemote = game:GetService("ReplicatedStorage").Package.Events.reb

local quests = {
    { name = "X Fighter Trainer", nickname = "X Fighter", requiredValue = 0, endRange = 30000 },
    { name = "Radish", nickname = "Radish", requiredValue = 100001 , endRange = 200000 },
    { name = "Mapa", nickname = "Mapa", requiredValue = 200001, endRange = 300000 },
    { name = "Citizen", nickname = "Evil Saya", requiredValue = 300001, endRange = 400000  },
    { name = "Top X Fighter", nickname = "X Fighter Master", requiredValue = 400001, endRange = 700000 },
    { name = "Super Vegetable", nickname = "Super Vegetable", requiredValue = 750001, endRange = 1200000 },
    { name = "Perfect Atom", nickname = "Perfect Atom", requiredValue = 110, endRange = 119 },
    { name = "SSJ2 Wukong", nickname = "SSJ2 Wukong", requiredValue = 120, endRange = 129 },
    { name = "SSJB Wukong", nickname = "SSJB Wukong", requiredValue = 8000000, endRange = 50000000 },
    { name = "Broccoli", nickname = "Broccoli", requiredValue = 50000001, endRange = 150000000 },
    { name = "SSJG Kakata", nickname = "SSJG Kakata", requiredValue = 150000001, endRange =  200000000 },
    { name = "Vegetable (GoD in-training)", nickname = "Vegetable (GoD in-training)", requiredValue = 200000001, endRange = 300000000 },
    { name = "Wukong (Omen)", nickname = "Wukong (Omen)", requiredValue = 300000001, endRange = 600000000 },
    { name = "Vills (50%)", nickname = "Vills (50%)", requiredValue = 600000001, endRange = 1200000000 },
    { name = "Vis (20%)", nickname = "Vis (20%)", requiredValue = 1200000001, endRange = 2000000000 },
    { name = "Vegetable (LBSSJ4)", nickname = "Vegetable (LBSSJ4)", requiredValue = 2000000001, endRange = 3000000000 },
    { name = "Wukong (LBSSJ4)", nickname = "Wukong (LBSSJ4)", requiredValue = 3000000001, endRange = 5000000000 },
    { name = "Vekuta (LBSSJ4)", nickname = "Vekuta (LBSSJ4)", requiredValue = 5000000001, endRange = 7000000000 },
    { name = "Wukong Rose", nickname = "Wukong Rose", requiredValue = 7000000001, endRange = 12000000000 },
    { name = "Vekuta (SSJBUI)", nickname = "Vekuta (SSJBUI)", requiredValue = 12000000001, endRange = 2000000000000000000 },
} 


function target()

    local player = game:GetService("Players").LocalPlayer.name
    print(player)
    
    targetted = player
    
    end

local function transform()
    pcall(function()
        for i,v in pairs(Settings.Tables.Forms) do
            if equipRemote:InvokeServer(v) then
                break
            end
        end
        repeat wait()
            wait(1)
            if plr.Status.SelectedTransformation.Value ~= plr.Status.Transformation.Value then
                game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
            end
        until game.Players.LocalPlayer.Status.SelectedTransformation.Value == game.Players.LocalPlayer.Status.Transformation.Value
    end)
end


function startgame()
 pcall(function()

    if game.workspace[targetted] then 
        wait(10)
        local Event = game:GetService("ReplicatedStorage").Package.Events.Start
        Event:InvokeServer()
        wait(3)
        
        local Event = game:GetService("ReplicatedStorage").Package.Events.Start
        Event:InvokeServer()
    
        wait(3)
    
        game.Players.LocalPlayer.PlayerGui.Main.bruh.Disabled = true
    
        game.Players.LocalPlayer.PlayerGui.Main.bruh.Disabled = false
        
        wait(2)
         local Event = game:GetService("ReplicatedStorage").Package.Events.Start
        Event:InvokeServer()
    end
end)

end

print(game.PlaceId)
--function
target()
    local function autoquest(boolean)
        repeat
           
        startgame()
        
        until game.workspace.Living[targetted]

        local a = data.Strength.Value
        local b = data.Energy.Value
        local c = data.Defense.Value
        local d = data.Speed.Value
        print(a, b, c, d)

        local smallest = a  -- initialize smallest variable to the first number

        if b < smallest then
            smallest = b
        end

        if c < smallest then
            smallest = c
        end

        if d < smallest then
            smallest = d
        end

        checkValue = smallest

        print("check value is " .. checkValue)


        print("The smallest number is: " .. smallest)  -- output: The smallest number is: 5


       for i, quest in ipairs(quests) do
            if checkValue >= quest.requiredValue and checkValue <= quest.endRange then
                print("Quest " .. quest.name .. " has a required value between " .. quest.requiredValue .. " and " .. quest.endRange)
                SelectedQuests = quest.name
                SelectedMobs = quest.nickname
                
                
            end
        end
        
       
        if checkValue >= 200000000 and game.placeId ~= 5151400895  then
            if data.Zeni.Value >= 15000 then
                print("15k or more is true")
                local A_1 = "Vills Planet"
                local Event = game:GetService("ReplicatedStorage").Package.Events.TP
                Event:InvokeServer(A_1)
               
                return
            else 
                SelectedQuests = "SSJG Kakata"
                SelectedMobs = "SSJG Kakata"
                print("15k or more is false")
                SelectedMobs = SelectedQuests
                return
               
                
            end
        end
        if firstquest == true then
            lastquest = SelectedQuests
            firstquest = false
        end
        
        if autostack == true  and checkValue > 8000000 then
            if lastquest ~= SelectedQuests then
                game.workspace.Living[targetted].UpperTorso:Destroy()
                getgenv().stacked = false
                repeat
                    print("in auto loop died check")
                    wait(1)
                   
                until plr.Character.Humanoid.Health >= 0
                wait(8)
            end
            lastquest = SelectedQuests
        end

        

    
end

getgenv().stacked = false 

function stack()
            
    wait(0)
    

    if data.Energy.Value > 8000000 then
        
   
    game.workspace.Living[targetted].UpperTorso:Destroy()
    wait(5)
    local Remote = game.ReplicatedStorage.Package.Events['equipskill']

    local Arguments = {
        [1] = "Godly SSJ2"
    }
    
    Remote:InvokeServer(unpack(Arguments))
    local Remote = game.ReplicatedStorage.Package.Events['ta']
        i = 0
    repeat
    Remote:InvokeServer(unpack(Arguments))
    i = i + 1 
    until i == 30
    wait(2)

    getgenv().stacked = true 


    



elseif data.Energy.Value < 8000000 then 
getgenv().stacked = true



end



 
end

--Function
local function quest()
   
    
    
        
    print(SelectedQuests)
    
    
    if game:GetService("ReplicatedStorage").Datas[player.UserId].Quest.Value ~= SelectedQuests then
        player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Others.NPCs[SelectedQuests].HumanoidRootPart.CFrame
		repeat
			wait()
            
			events.Qaction:InvokeServer(game:GetService("Workspace").Others.NPCs[SelectedQuests])
		until game:GetService("ReplicatedStorage").Datas[player.UserId].Quest.Value == SelectedQuests
	end
end




local RunService = game:GetService('RunService')


local function energyvolley()
    A_1 = "Energy Volley"
    A_2 =
    {
        ["FaceMouse"] = false,
        ["MouseHit"] = CFrame.new(15932.0273, -12.8115005, 15540.2061, 0.983303905, -0.0826973468, 0.162094966, -0, 0.89077127, 0.454452157, -0.181971505, -0.446864575, 0.875898659) 
        --CFrame.new(2669.62573, 17.2917271, -1559.78247, 0.736925066, 0.155183718, -0.657920659, 7.4505806e-09, 0.973292172, 0.229570359, 0.675974548, -0.169176146, 0.717243314)
    }
    A_3 = "Blacknwhite27"
    Event = game:GetService("ReplicatedStorage").Package.Events.voleys
    Event:InvokeServer(A_1, A_2, A_3)
    wait()
end


local function SuperDragonFist()
    local A_1 = "Super Dragon Fist"
    local A_2 = "Blacknwhite27"
    local Event = game:GetService("ReplicatedStorage").Package.Events.mel
    Event:InvokeServer(A_1, A_2)

end

local function MachKick()
    
    local A_1 = "Mach Kick"
    local A_2 = "Blacknwhite27"
    local Event = game:GetService("ReplicatedStorage").Package.Events.mel
    Event:InvokeServer(A_1, A_2)

end

    
    
local function energyvolleyAuto()
    if getgenv().volleySettings == true then
        repeat
            energyvolley()
        
            wait()
        until getgenv().volleySettings == false
    end
end



    
    spawn(function()
      
    while true do wait()
              pcall(function()
                while true and wait() do
        

                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")  
                then
            for i, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do
                autoquest() 
                if v.Name:lower() == SelectedMobs:lower() and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    quest()

                    getgenv().farm = true
            
                  
                        repeat
                            player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0,0,3);
                            wait()
        
                            game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
                            
                        until getgenv().farm == false or v == nil or v.Humanoid.Health <= 0 or plr.Character.Humanoid.Health <= 0
                       
                        
                    
                    if plr.Character.Humanoid.Health <= 0 then 
                        getgenv().farm = false
                        getgenv().stacked = false
                        repeat
                            print("in auto loop died check")
                            wait(1)
                           
                        until plr.Character.Humanoid.Health >= 0
                        wait(8)
                        
                       
                    end
                    
                end
            end
        end
end
                end)
end
            end)

spawn(function()
    while true and wait() do
    pcall(function()
                while getgenv().stacked == true and wait() do 
                    transform()
                end
            end)
end
end)


spawn(function()
    while true and wait() do
pcall(function()
            while true and wait() do 
                wait(1)
                rebirthRemote:InvokeServer()
                if data.Strength.Value < 200000000 and game.placeId ~= 3311165597 then
                    local A_1 = "Earth"
                local Event = game:GetService("ReplicatedStorage").Package.Events.TP
                Event:InvokeServer(A_1)
                wait(8)
                end
            end
        end)
end
        end)

adasdasd = 1
spawn(function()
    while true and wait() do
pcall(function()
    while getgenv().stacked == true and wait() do 
 if game.workspace.Living[targetted] then
    
    repeat

            A_1 = "Blacknwhite27"
            Event = game:GetService("ReplicatedStorage").Package.Events.cha
            Event:InvokeServer(A_1)
    until adasdasd == 1
end

end  
end)
end
end)



   
      
spawn(function()
    while true and wait() do
            pcall(function()

        plr.Status.Blocking.Value = true  
end)

end
end)

state = true

spawn(function()
    while true and wait() do
    pcall(function()
        while true and wait() do
        getgenv().volley = true
        if getgenv().volley == true then
            if  data.Energy.Value > 100 then
            repeat
                
                energyvolley()

                SuperDragonFist()
                
                MachKick()
                wait()
            until getgenv().volley == false
        end
        end
    end
end)
end
end)

repeat wait(2)
    pcall(function()
    
if getgenv().stacked == false then
    count = 0
    repeat 
        count = 1
        wait(7)
    stack()
    getgenv().stacked = true
    until count == 1
    end
    wait(10)
end)
until sddddddddddddddddd == 1032131313131313
