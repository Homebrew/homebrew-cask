cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.33.0"
  sha256 arm:   "0ceaf45c335b283f4e507411489a52cc5b8b0296d5b21fd8adf6376e310ac66f",
         intel: "9de98479c0753c19d6a423d9d96d556033e1da02ee463c9f64a642d492ddfb15"

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
