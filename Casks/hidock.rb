cask "hidock" do
  version "1.1"
  sha256 "a40ccaacaea3e23e863b879d58ba195a7c65dca919ecf08b5514f85f12fdad5d"

  url "https://hidock.app/HiDock_#{version}.zip"
  name "HiDock"
  desc "Set custom Dock settings for when on different displays"
  homepage "https://hidock.app/"

  livecheck do
    url "https://hidock.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "HiDock.app"

  uninstall login_item: "HiDock",
            quit:       [
              "design.rafa.HiDock",
              "design.rafa.HiDock-LaunchAtLoginHelper",
            ]

  zap trash: [
    "~/Library/HTTPStorages/design.rafa.HiDock",
    "~/Library/Preferences/design.rafa.HiDock.plist",
    "~/Library/Saved Application State/design.rafa.HiDock.savedState",
  ]
end
