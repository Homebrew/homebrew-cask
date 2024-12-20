cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.51.3"
  sha256 arm:   "0096a4753c5dec6db9512266b228057d3543d485acfe64872e3a368a5e01e989",
         intel: "f29b4eb3c233ea9a59d466ac8cb65bb99403186c4accb4b0186d64c15be0a410"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
