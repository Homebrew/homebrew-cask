cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.40.20"
  sha256 arm:   "58d3c18ccf56b63dbfb9f2320ef5270b315765950bd0f9d21a53d1def578cf73",
         intel: "58041bde1e75f6abefb6855ea6487a0c04aa8ef52624736914b06f0c47bda46d"

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
