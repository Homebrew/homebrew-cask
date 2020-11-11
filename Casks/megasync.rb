cask "megasync" do
  version "4.3.7"
  sha256 "3afcf57af63c5e14a2902896fe0ba4eb6dbb46d88878b88ec3014dbe38a54c54"

  url "https://mega.nz/MEGAsyncSetup.dmg"
  appcast "https://github.com/meganz/MEGAsync/releases.atom"
  name "MEGAsync"
  desc "Syncs files between computers and MEGA Cloud drives"
  homepage "https://mega.nz/sync"

  app "MEGAsync.app"

  zap trash: [
    "~/Library/Caches/mega.mac",
    "~/Library/Preferences/mega.mac.plist",
  ]
end
