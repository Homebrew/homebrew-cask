cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.6"
  sha256 arm:   "2ee72dcdea4fa873b613b623711b6c7fc876db5486c17cd4053527da8c553e42",
         intel: "271ed1b8dff9b7269535ce0905e2b21bfe294115b3fc2d36c98b4841c288c05c"

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
