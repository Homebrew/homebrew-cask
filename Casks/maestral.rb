cask "maestral" do
  version "1.5.0"
  sha256 "e1d234210d7728177f1f8e8d3c85bc488177c950877a6808c25aff3678b13d11"

  url "https://github.com/SamSchott/maestral/releases/download/v#{version}/Maestral-#{version}.dmg",
      verified: "github.com/SamSchott/maestral"
  name "Maestral"
  desc "Open-source Dropbox client"
  homepage "https://maestral.app/"

  app "Maestral.app"
  binary "#{appdir}/Maestral.app/Contents/MacOS/maestral-cli", target: "maestral"

  zap trash: [
    "~/Library/Application Support/maestral",
    "~/Library/LaunchAgents/com.samschott.maestral.maestral.plist",
    "~/Library/Logs/maestral",
    "~/Library/Preferences/com.samschott.maestral.plist",
  ]
end
