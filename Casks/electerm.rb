cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.22"
  sha256 arm:   "454d02403a9f8c6d50873fbb5617b747bc91467ea04592e6b374a101d0fff646",
         intel: "8525b2700b166e08b0b91e0d610dc8b5996f4770a9167c8acb1250ddf2ae319e"

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
