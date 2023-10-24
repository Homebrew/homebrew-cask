cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.30"
  sha256 arm:   "f27ade7ff5fd1f73b4245963347fe1c7b02f6b04fbb3de32e67186cc8abb221c",
         intel: "7786194b8936e0fa5659679860d32c30f55fdd73548bce49843d3ab68d22ce04"

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
