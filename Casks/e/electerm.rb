cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.51.0"
  sha256 arm:   "09b79d9f74e61173aa53fee026d8c328734e44fe8ff4137f144f0c428d820458",
         intel: "ef2ba322c712722ae03f2360ae5fc1e0b8186fde9f013f99e6fb8982f9767db0"

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
