cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.58"
  sha256 arm:   "25fe7a54b08b744ef4526ef63b4b5fc34a4df963a769b8d5acfc52cc6692014a",
         intel: "cdb1111b6cc988af6d70092c8f8f723cf50cbb115af52cea0b4bd0338db4e901"

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
