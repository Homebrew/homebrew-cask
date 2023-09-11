cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.32.6"
  sha256 arm:   "ec53a185bdfbb64327557672f3f326920549c3b6268729e73ff91b36bd1e2b34",
         intel: "21806b3debb48e6a64a70f798844fc6d3b49e02d485a94cda12aecb2cb7ebc03"

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
