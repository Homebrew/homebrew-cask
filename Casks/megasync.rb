cask "megasync" do
  version "4.3.8"
  sha256 "7e57aec88ef3c186418a7c05d099a652fbc45bfdaa5cd61bbbb16d84256d7412"

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
