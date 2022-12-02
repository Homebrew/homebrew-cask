cask "megasync" do
  arch arm: "Arm64", intel: ""

  version "4.8.1"
  sha256 arm:   "517204874ad554c582481eed965f3b0dd0954ca3957f1e5b62cf0f139a5e7cb7",
         intel: "fe931e6f20afbe8c89e8953dcb8bfd77f42cc2ef7ba0c88e585946c2dbdd0fb2"

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
            login_item: "MEGAsync"

  zap trash: [
    "~/Library/Application Scripts/mega.mac.MEGAShellExtFinder",
    "~/Library/Caches/mega.mac",
    "~/Library/Containers/mega.mac.MEGAShellExtFinder",
    "~/Library/LaunchAgents/mega.mac.megaupdater.plist",
    "~/Library/Preferences/mega.mac.plist",
  ]
end
