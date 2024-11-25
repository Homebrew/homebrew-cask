cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.50.21"
  sha256 arm:   "86ecf330bcd6deeedc4ff46127f75e3b6a4b33ad22e094b7f5c845daf7767031",
         intel: "333d512b858d1b529178ee0286353a0a53a9b64aa2aebdf7813b7514762e4807"

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
