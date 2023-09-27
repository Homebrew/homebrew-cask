cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.33.6"
  sha256 arm:   "8bb8bf89c8f736706eca74bd317cebe46fdb1b77c35fec0930bb87bc1249fd5f",
         intel: "ec1b9f8aceab80514884c60aaaf0652190771d06c1675103f114abe9a04f9ded"

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
