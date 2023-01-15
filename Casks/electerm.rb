cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.10"
  sha256 arm:   "a899b063a7288b41c8aeb8aad6b15e50ad534e7909ad5aed01c1c7a9d05f53fa",
         intel: "dbe76c4a4151cee971d869d2828d1199520689570fbf87809a5ed56dcb19737a"

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
