cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.40.6"
  sha256 arm:   "f5851fe377ea4dc08a39b5efbad89d8a293a7947926f22388411bee9eee6cf13",
         intel: "98be090de76496d6c9f49b7ec9805a57222c9872bfc890a0d8272ec983d1c06d"

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
