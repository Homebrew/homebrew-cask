cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.30"
  sha256 arm:   "65a757da59d816b9cf86e68d85c6f766fdff60838c992dbd88e3bf8784992811",
         intel: "32d01723a0e8742d70d4538439b6bb12a6f9846072e05c6b8bc8ebecc00b238c"

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
