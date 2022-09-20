cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.2"
  sha256 arm:   "89df6ffbfbcb6432b1e8d5d98324302dbf766afddd53c5260b9568648412bad4",
         intel: "30aaafafd45413a3b17e9dcb4eb88982dc4118827a4ae1f96a62a2ef93b3b742"

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
