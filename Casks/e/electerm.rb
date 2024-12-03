cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.50.40"
  sha256 arm:   "bdcd52b9a29b6fe4ce38588a4ce99f4c6c08da4a55701cd685f37f0607948ac0",
         intel: "cad0b518da81e3a17abd17c0f881ed9c2ba2e2203b33a88e272c301c67e9d1e4"

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
