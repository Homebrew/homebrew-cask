cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.22.33"
  sha256 arm:   "204b59622b2eafa2e9af1b3181f3e9a5b19f8478e2f2436efa1a294906caacaf",
         intel: "d0e8d7b7e166a6e06d4f4671916ce989affb5ae07d9efb19c10d440f842e4805"

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
