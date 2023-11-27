cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.6"
  sha256 arm:   "c9c73d1841168654f44dd7fe3663c9cdd3ee5002f15868513bc0f9bde26d9faa",
         intel: "7bae27a92152088d6ea791c22fb36568588d9cf95e1e687febd770e3ff305aed"

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
