cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.25.41"
  sha256 arm:   "b264ffc66afad07ee1b59b07eb25db08dcc68ecef77d3c25a5cd67ca8be6e1a5",
         intel: "c5d95542ad174bf82eea55cf98a0c55b3481be056ffb57af6fa2e2f0ec68638e"

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
