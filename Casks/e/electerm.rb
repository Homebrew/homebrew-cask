cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.56"
  sha256 arm:   "0ff585b61dbfeef85616b43394308acca75e4fb47f43d26199a508a2915db9e7",
         intel: "6195caed5ef2941aa5d203c59f568609d0a4f9cb0043a889582f35e52a75975b"

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
