cask "armcord" do
  version "3.2.4"
  sha256 "a246a1559bcdc4c4243c7544fec7968caf6f6415e0eb442a9a2348332de8a04c"

  url "https://github.com/ArmCord/ArmCord/releases/download/v#{version}/ArmCord-#{version}.dmg",
      verified: "github.com/ArmCord/ArmCord/"
  name "armcord"
  desc "Custom lightweight Discord client designed to enhance your experience"
  homepage "https://armcord.app/"

  app "armcord.app"

  zap trash: [
  "~/Library/Application Support/ArmCord",
  "~/Library/Preferences/com.smartfridge.armcord.plist",
  "~/Library/Saved Application State/com.smartfridge.armcord.savedState",
]

end
