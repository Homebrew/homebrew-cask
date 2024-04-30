cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.80"
  sha256 arm:   "122910e99a4f68ed81a7597c9a230cb57457dfaf644edca66a74774d29bacdef",
         intel: "73b5fa56bc747c98dda07ba65bfda4eb7d0a480e5ecff1e414dc70e9149e6256"

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
