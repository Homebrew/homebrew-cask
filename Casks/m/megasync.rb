cask "megasync" do
  arch arm: "Arm64"

  version "4.11.0"
  sha256 :no_check

  url "https://mega.nz/MEGAsyncSetup#{arch}.dmg"
  name "MEGAsync"
  desc "Syncs files between computers and MEGA Cloud drives"
  homepage "https://mega.nz/sync"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MEGAsync.app"

  uninstall launchctl:  "mega.mac.megaupdater",
            quit:       "mega.mac",
            login_item: "MEGAsync"

  zap trash: [
    "~/Library/Application Scripts/mega.mac.MEGAShellExtFinder",
    "~/Library/Caches/mega.mac",
    "~/Library/Containers/mega.mac.MEGAShellExtFinder",
    "~/Library/LaunchAgents/mega.mac.megaupdater.plist",
    "~/Library/Preferences/mega.mac.plist",
  ]
end
