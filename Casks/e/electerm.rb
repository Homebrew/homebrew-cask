cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.50.59"
  sha256 arm:   "08f15dae0484a7f6ba97b75f2ad77593b9415ae18277ffa556ebb83a9276e089",
         intel: "fdd930ce0b526585596a10f42fbfdcced6bea83e7a2cb867f25fddcf335c7bdb"

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
