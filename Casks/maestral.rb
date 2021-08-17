cask "maestral" do
  version "1.4.6"
  sha256 "8a84bb54d63ef02728c03d0ce2c51116417b2a54d57dec61d9b560f29ebb6b67"

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
