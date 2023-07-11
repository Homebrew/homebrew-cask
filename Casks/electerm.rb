cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.27.5"
  sha256 arm:   "ffef35953f75bd623e36b37923f57c958856c5e56031fb2975d742824461859d",
         intel: "2fdd8dc158e60710e228d7ed24471b6d7ec3984597279beb4ceaa67e4fabaf09"

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
