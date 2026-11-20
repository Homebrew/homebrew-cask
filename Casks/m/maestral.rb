cask "maestral" do
  version "1.9.5"
  sha256 "cd8f393abba8a70794e527ee30c4d3f11b5da6e935fb315fbe6ff00bf8f79e4c"

  url "https://github.com/SamSchott/maestral/releases/download/v#{version}/Maestral-#{version}.dmg"
  name "Maestral"
  desc "Open-source Dropbox client"
  homepage "https://maestral.app/"

  deprecate! date: "2026-11-08", because: :discontinued

  auto_updates true
  depends_on :macos

  app "Maestral.app"
  binary "#{appdir}/Maestral.app/Contents/MacOS/maestral-cli", target: "maestral"

  uninstall quit: "com.samschott.maestral"

  zap trash: [
    "~/Library/Application Support/maestral",
    "~/Library/LaunchAgents/com.samschott.maestral.maestral.plist",
    "~/Library/Logs/maestral",
    "~/Library/Preferences/com.samschott.maestral.plist",
  ]
end
