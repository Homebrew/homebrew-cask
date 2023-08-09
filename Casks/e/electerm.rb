cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.27.30"
  sha256 arm:   "f3cb7d00dea6f12f878df8d7b58745757f30be2a5ab0a568402f7200d454b787",
         intel: "d99a65731e18857e494f2d0a25c5621abe05e908031086eea33c7b2b132c1884"

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
