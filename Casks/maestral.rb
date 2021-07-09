cask "maestral" do
  version "1.4.6"
  sha256 "b37235199aade10baa8a7b6163c1f607be424ef7333ad402c925b4425bb07642"

  url "https://github.com/SamSchott/maestral/releases/download/v#{version}/Maestral-#{version}.dmg",
      verified: "github.com/SamSchott/maestral"
  name "Maestral"
  desc "Open-source Dropbox client"
  homepage "https://maestral.app/"

  app "Maestral.app"

  zap trash: [
    "~/Library/Application Support/maestral",
    "~/Library/LaunchAgents/com.samschott.maestral.maestral.plist",
    "~/Library/Logs/maestral",
    "~/Library/Preferences/com.samschott.maestral.plist",
  ]
end
