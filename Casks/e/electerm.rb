cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.32.38"
  sha256 arm:   "c1fe034ca47318277ba9ab77a6ba8b104dc78355a96a250ab238cd2841055039",
         intel: "0ae38fdba525b894f6ddbcd8080841fdcd439e92c4136e1437b8421183f42545"

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
