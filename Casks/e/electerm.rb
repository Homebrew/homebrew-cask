cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.28.4"
  sha256 arm:   "43cc3219ad82027b94ba2f97062f62798d5780914cde837e3d49a67573b3188e",
         intel: "b3280b172eb3b56ec0128bd73bd74947030a146206fada26ae4eadd89fa945b2"

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
