cask "armcord" do
  version "3.2.4"
  sha256 "1825666f20aa3406b14b405d083d587676f9898d4c55de5353804a8969163459"

  url "https://github.com/ArmCord/ArmCord/releases/download/v#{version}/ArmCord-#{version}.dmg",
      verified: "github.com/ArmCord/ArmCord/"
  name "ArmCord"
  desc "Discord client"
  homepage "https://armcord.app/"

  depends_on macos: ">= :high_sierra"

  app "ArmCord.app"

  zap trash: [
    "~/Library/Application Support/ArmCord",
    "~/Library/Preferences/com.smartfridge.armcord.plist",
    "~/Library/Saved Application State/com.smartfridge.armcord.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
