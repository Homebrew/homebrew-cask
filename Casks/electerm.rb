cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.26.0"
  sha256 arm:   "def4716b9b421e0272d90548085bf272f5fb159a2c4116081ed3b6c84c8bcc2f",
         intel: "a6a761c8708fda778f984d00906f85531b4a1a063a6296fc2d4798cae233347c"

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
