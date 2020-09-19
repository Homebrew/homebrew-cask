cask "megasync" do
  version "4.3.5"
  sha256 "572f6dd472addc00cccde78371b43de8ab19cdd7404f227d0a052f4435a9d940"

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
