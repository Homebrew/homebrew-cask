cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.10"
  sha256 arm:   "f6c45bc39fc2dc340604e81e48527cc3ca09811c32d2f03cf5cde05167615293",
         intel: "ce1b49d1972bd97210c7aeb91be2b1f720414d2751b0921c8a78367610993000"

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
