cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.1"
  sha256 arm:   "79069a7db4aa321ed4ac9e41b788d6fe165a684db9c7b8c7ff375a599fc3e859",
         intel: "bb1687af4e0c4c690fc1205718fbc5d85d9f68165ec13e708c3c0ea8a4e5f66a"

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
