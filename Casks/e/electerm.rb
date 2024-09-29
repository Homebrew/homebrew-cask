cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.40.16"
  sha256 arm:   "ad0207793415702aba25c8a7c745803fe52f38e2cdaee1acee281f5afb899553",
         intel: "62f11cf9ba84b722f0c6fd30f27c48cb2081c61f16f4ae11d5bc645ad1635aed"

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
