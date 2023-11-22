cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.35.6"
  sha256 arm:   "e4b0f24c8eb2c438b334185494001dba8726e087300b0ba6e1df534a7b4f3f0d",
         intel: "e6e51e0e496e23e5c6530f18a04fc3fb79c44bad817f8dd2ba34c4c228d60e02"

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
