cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.60.46"
  sha256 arm:   "7e37ba11687168c9880a3dd952ac3b00a8e131cc7c3cba0063ccb0bcf930744d",
         intel: "ce254cb459471c440f5b2ab8a57fc6adbec9eb1ce2409a5cb64a44958641111a"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
