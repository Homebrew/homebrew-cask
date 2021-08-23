cask "maestral" do
  version "1.4.8"
  sha256 "51863aaf3fbd8b62250fe51cb8152b2dd65f558c0bee277c2e3c257cc8bea6b4"

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
