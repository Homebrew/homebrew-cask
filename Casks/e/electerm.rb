cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.6"
  sha256 arm:   "9c1a14d5bacf14c18a6b8dbbb6110818f0fac508186acc2aabe23de5c73ccea3",
         intel: "6eba52d2d3a5c32e1279991c3c8f182ecb431a293d5c3824c0294129387d4a7e"

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
