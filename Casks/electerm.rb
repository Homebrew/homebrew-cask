cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.12"
  sha256 arm:   "8b6378eee8eaa7ec8bc78ded92ef9e726933b10a800f48bcb6fee41f34409744",
         intel: "c9c864b76a0a38056d8bfb92645250d78429b33abc54be3776b2acbcc6a11477"

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
