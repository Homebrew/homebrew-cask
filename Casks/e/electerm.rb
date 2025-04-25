cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.80.6"
  sha256 arm:   "c5a338e6d3511b0e4695cf0ea5e530913528c36e76bb8de2ea68ab10582ef162",
         intel: "1ea0006c48977b1ff6d6b8a901160edd62df675caca325af8416c8eb88cc43ca"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
