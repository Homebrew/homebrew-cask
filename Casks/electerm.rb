cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.27.19"
  sha256 arm:   "01984136d023cac0ae4660103a2e74492def15c167a0aa4fc5a5e62232fa8539",
         intel: "ff7b56fe59a54d2bf7dffe0b2902d2d5ceaee7f7144359c4f8b2911d5fe09c8d"

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
