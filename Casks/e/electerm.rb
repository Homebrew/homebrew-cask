cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.96"
  sha256 arm:   "feef7d5eb044c53d7b6e625c206eb7c8292fc31f5eceb17acda6383ad562c19f",
         intel: "8b0632cdde27f92977468360a20057d93d9fe161f811e9ef56d9da063cecb16c"

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
