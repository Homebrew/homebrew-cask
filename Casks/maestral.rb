cask "maestral" do
  version "1.4.5"
  sha256 "0abeef70e6dc841ad181e3ebbdbfdb835642d9ece9004bcd74217d8f16ff8810"

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
