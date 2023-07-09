cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.27.0"
  sha256 arm:   "33627ebd914541bec50d99bd43e980c697990e6faa5a012b36044d77ea879c4e",
         intel: "048858f4c1bc6f59dc7c2508118af955ce3c4ca1bfa8d77d72ec5754ed75c687"

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
