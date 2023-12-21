cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.80"
  sha256 arm:   "a16de6abeff98d03fb63f83e2ea7f960c7758c7ee930966c44b586efc3de60d6",
         intel: "7af440f24a30744b562e442068089d9c5da722c55bee1b86a201d586646edcfb"

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
