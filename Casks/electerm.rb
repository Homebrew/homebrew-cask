cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.28"
  sha256 arm:   "b89031bdbcbc5f1cc8fe7f4db5ddf0bf89656a233843d2fb6ff333bed6edcf59",
         intel: "36e0e0670b2aedfdd8eb15c2fab03775b4a9ced26459f94a3947c558f5246907"

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
