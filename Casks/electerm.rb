cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.16"
  sha256 arm:   "b1b9b9a91f6fe9f5feab68b9856f38cb82dcc13bb0a01f71f887116c55ad022a",
         intel: "4354b67c5c1d38a15ca97a4c2671dc6b030865ddf36b7411b002cd87f7b5f10c"

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
