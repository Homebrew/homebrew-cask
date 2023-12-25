cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.88"
  sha256 arm:   "fc68e3b30683116b8113461681f3ebdb9e7f7c89ffaeb53f4444147ce6de81da",
         intel: "dfd396c41b6da9d5a4a8eaf82a093844b1514b261249fd5dc8fb7ab1affe2640"

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
