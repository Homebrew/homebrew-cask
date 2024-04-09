cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.65"
  sha256 arm:   "f40d680ff6b4d18dbc7da022f445275bca2f16bfb6cbfd63b67dc1c65758e54b",
         intel: "667acb71d03296a84ddc772c29fb4783116099f85777f59921904bbc053f5c2b"

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
