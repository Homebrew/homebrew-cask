cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.72.18"
  sha256 arm:   "66f24ab83d34e7240a23e1b17c8a6df493c4e543e0e60daec7b75e5a10003195",
         intel: "0cb5c4babc99a3c469fa978abcb339cf371e93d9c855958529a47a92b25fe18c"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
