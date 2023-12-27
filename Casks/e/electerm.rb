cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.93"
  sha256 arm:   "fbcb571698bbb184a114f6a2d0b0ed7c9ba27ca706004a93a2c56818a0112c7e",
         intel: "86340888d5e4097c17625fa628dc58d416070c8a4274598297c17d967cb3d285"

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
