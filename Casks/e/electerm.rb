cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.38.86"
  sha256 arm:   "72a23ad8632d80d43173c08d8383a38568077203c8ea1711a395c1cf9b362789",
         intel: "547ef9a1ab04d9417b65f7a63c1fff1abb1d3e70864c1adbac3fedca361ddd78"

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
