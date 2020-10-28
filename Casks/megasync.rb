cask "megasync" do
  version "4.3.6"
  sha256 "a3a233d7c97be2e50a7a9f9cc872cd676321fc9f0395c27fd08ed973a99031f5"

  url "https://mega.nz/MEGAsyncSetup.dmg"
  appcast "https://github.com/meganz/MEGAsync/releases.atom"
  name "MEGAsync"
  desc "Syncs files between computers and MEGA Cloud drives"
  homepage "https://mega.nz/"

  app "MEGAsync.app"

  zap trash: [
    "~/Library/Caches/mega.mac",
    "~/Library/Preferences/mega.mac.plist",
  ]
end
