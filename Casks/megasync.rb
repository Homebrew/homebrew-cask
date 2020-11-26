cask "megasync" do
  version "4.3.8"
  sha256 "7e57aec88ef3c186418a7c05d099a652fbc45bfdaa5cd61bbbb16d84256d7412"

  url "https://mega.nz/MEGAsyncSetup.dmg"
  appcast "https://github.com/meganz/MEGAsync/releases.atom"
  name "MEGAsync"
  desc "Syncs files between computers and MEGA Cloud drives"
  homepage "https://mega.nz/sync"

  auto_updates true

  app "MEGAsync.app"

  uninstall launchctl: "mega.mac.megaupdater",
            login_item: "MEGAsync"

  zap trash: [
    "~/Library/Application Scripts/mega.mac.MEGAShellExtFinder",
    "~/Library/Caches/mega.mac",
    "~/Library/Containers/mega.mac.MEGAShellExtFinder",
    "~/Library/LaunchAgents/mega.mac.megaupdater.plist",
    "~/Library/Preferences/mega.mac.plist",
  ]
end
