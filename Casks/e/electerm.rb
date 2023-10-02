cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.33.36"
  sha256 arm:   "1bdff53d33111b3ec307dc9f0814b8aba3e913b4c496e9f4ef6de1777e8a99e1",
         intel: "1b8f201fe9d1126635a4c2c1728b14bc28d14f9e1a627e1ac45c5f26ef728e64"

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
