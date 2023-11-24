cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.36.1"
  sha256 arm:   "c5ce83956fae0b4ce4558ef352617a646d1e6dc66982d918e5b7da0a0200f232",
         intel: "5c09170c934f520e156040dd83bb7ce93eec743ccae32b27b3e3042744283a32"

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
