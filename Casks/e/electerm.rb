cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.72.36"
  sha256 arm:   "9dcc8fc8d41e638a2be121512fca01112be15f697913b79b3d4a1c6924d96d15",
         intel: "2067580afcf1797d43fca140e8023bbd930794520f3b0bade5b66b4bc0bf23c0"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
