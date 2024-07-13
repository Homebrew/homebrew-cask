cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.76"
  sha256 arm:   "4b861491dd7602ed76a428c42f6a2e99200aa7218bf8ae109a5bbce2e7e29b9b",
         intel: "7353198145089e318af310a3c69624456513b27830f50f438574dc2f01f84fd0"

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
