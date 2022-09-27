cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.6"
  sha256 arm:   "6db1c3abbb3938e544ac677329523c20597c94f468b244353c6315d98282cc5d",
         intel: "53862c454ec3c6e417396f882657ac5526c9da51e6547e2ec63d82d0d204c65a"

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
