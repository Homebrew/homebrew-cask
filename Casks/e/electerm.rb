cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.60"
  sha256 arm:   "b5e7ed6473a5f1ae3d51c1c3f9b3975b2091d9acf0fe3b77d957f95b7df1487d",
         intel: "9f12bea6cd326239c113f9c5dcba7ecbc171f4c190ae8f7ca7aa3e1be9edf3d9"

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
