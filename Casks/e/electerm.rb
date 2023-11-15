cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.68"
  sha256 arm:   "36938563f0f923a62585ed651d244c8e9e8c7b38115942f33dce322a286306d2",
         intel: "eaa5a14bd73d467817cddb49b76422bb22975c8f34b7f94fc61109bff2fa18b7"

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
