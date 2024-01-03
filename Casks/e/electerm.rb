cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.110"
  sha256 arm:   "c194d934695f727820b9e212e6a1d798592a6a68430f8494f0f55dbf4f47938e",
         intel: "39731e34e9f5601fb4c3b002305c359f8f294e9fccc5d1d219a50252eb66695b"

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
