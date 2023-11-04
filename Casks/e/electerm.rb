cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.46"
  sha256 arm:   "264b7cefbd0f5f76f14180975a4d539c32c692ac6208a2500572f4260609a8bc",
         intel: "5cb36013005704f2f0d1ee37fb18827407a9f100d93e39a704ff86c2c9979f04"

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
