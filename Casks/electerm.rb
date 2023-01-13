cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.24.13"
  sha256 arm:   "148285727d5ee0fa22829991aa26a44f416d894200d051a7c2a3409f4dbaf953",
         intel: "5584bbdc12f368ea550ff2e740ee55b80563019d18999143ef40bd2ea56a8f6a"

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
