cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.46"
  sha256 arm:   "062ecd59498a78ab69cc6e77795ceafc069f50253851b6ca2d6d14d8d8134367",
         intel: "033e3da30281423d6024811f3849dcb74f325082ac3fdaaf11587784fc001f8b"

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
