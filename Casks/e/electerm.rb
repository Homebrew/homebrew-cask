cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.92"
  sha256 arm:   "02776047dbe51899d319a916be64673368e06910a10794457a146fdab3a8f43a",
         intel: "e26ae70e91500efacd0df718dc7ed4e18d063a738ee940b6b8235030b35c1137"

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
