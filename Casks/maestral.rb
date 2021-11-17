cask "maestral" do
  version "1.5.1"
  sha256 "b6403e1da9e6499730d0652adde94e3e9a9381b351046eaefdc8d3dba21f2e1d"

  url "https://github.com/SamSchott/maestral/releases/download/v#{version}/Maestral-#{version}.dmg",
      verified: "github.com/SamSchott/maestral/"
  name "Maestral"
  desc "Open-source Dropbox client"
  homepage "https://maestral.app/"

  auto_updates true

  app "Maestral.app"
  binary "#{appdir}/Maestral.app/Contents/MacOS/maestral-cli", target: "maestral"

  zap trash: [
    "~/Library/Application Support/maestral",
    "~/Library/LaunchAgents/com.samschott.maestral.maestral.plist",
    "~/Library/Logs/maestral",
    "~/Library/Preferences/com.samschott.maestral.plist",
  ]
end
