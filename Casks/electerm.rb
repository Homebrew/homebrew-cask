cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.20"
  sha256 arm:   "dde84566d4da28fbc163fabc21c6d0312a411da91828d946c2ef825688f02873",
         intel: "a1c300dde2965ca51b53c8c887b5551d1c21302f1108baefcd80cbba697c0e1e"

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
