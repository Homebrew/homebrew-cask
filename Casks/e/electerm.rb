cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.47"
  sha256 arm:   "401c18c3200635e427b2f8b2cc971ad8e6291470dbe850aad7deb415081c6d76",
         intel: "9ab4170c9310d10be6d149cf0b3daa2b938b931677b2e6f87d0d18573fb577fd"

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
