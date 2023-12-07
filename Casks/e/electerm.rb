cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.37.38"
  sha256 arm:   "ce55d36be7e5e59129da2f8c7e37cdda800b2bd61a192627c31016219d1c5dde",
         intel: "1ca93cf87aa67ba0228090924e9492d36bb56b7a615cf0660f62c4e30a32ceb4"

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
