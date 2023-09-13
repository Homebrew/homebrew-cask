cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.32.28"
  sha256 arm:   "3cd5b78ddc8de434570f6992f80b2198cd2a18af6468c8d3efa235341ef6a159",
         intel: "a6d949903060db3729f6b73982a4a2267d3c974ab4125d4791d388a884b1967c"

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
