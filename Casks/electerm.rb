cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.22.30"
  sha256 arm:   "8d1521d79234b56b023cff76d3f8b0b808abef98e5951f00798322042e40bb2b",
         intel: "7036861bce6abe98a9fbd56e72f68b0ba591f10de01180d09e76c7a0de37b2c2"

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
