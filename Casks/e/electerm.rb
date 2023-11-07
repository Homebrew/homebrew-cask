cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.48"
  sha256 arm:   "720778fdfb057b2897a2d15a830a67edb6a9818a937f500c504964da835fa616",
         intel: "4b1cdf8ee77164c0f18c24f0e08c433f83ac6f628b3e8736c95b15a38a7a8670"

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
