cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.20"
  sha256 arm:   "bcb6f589e60743f533bda2a3934933842b83f26d347a4b1e8462a026e112b5f0",
         intel: "b9a393ddfadd9ea98e0ae914d9188853ddd554c00fa0db595afde1320c5a40cc"

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
