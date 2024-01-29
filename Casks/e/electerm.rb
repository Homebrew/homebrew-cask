cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.8"
  sha256 arm:   "45735b1053e7955b1b67b1c1027a9d03c8295b179ab767ee56cd4201d707d436",
         intel: "f153b33fd8442f8207e09e3c4eadd3c1d0916999ee07b48c8fe459f9a9953305"

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
