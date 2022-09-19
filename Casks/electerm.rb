cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.3"
  sha256 arm:   "3344502276614cd22c6df6ad717bf543eb745ef2eea02061008074baf45c6ec9",
         intel: "584d816983a7926d3f9d473ec29963dc834da325ae5c8df67b045a411f7e1a80"

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
