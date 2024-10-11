cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.40.18"
  sha256 arm:   "65cefc8f7e7dce9c27fea4ac259e74c92a949420274f57e7a95ed09c494c161a",
         intel: "d7fc2cb39568c8a75f78d37956b01c8d2b2475d25e3cf176ac5e488f51dda72b"

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
