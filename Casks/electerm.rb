cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.15"
  sha256 arm:   "f20b785c60e77cc82f47a0751ab0510181709b088ff23f898395ce60c1380f1a",
         intel: "0fae80b6b90e05edd68199ec42186573e9fa2c97fb6837fc0dab89a66b07e3f1"

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
