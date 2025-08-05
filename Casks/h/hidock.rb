cask "hidock" do
  version "1.4"
  sha256 "29e95a7eb061236658ccccbc86c1ba0ee872bf5e627c0fff0a37ca29b056f60e"

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

  uninstall quit:       [
              "design.rafa.HiDock",
              "design.rafa.HiDock-LaunchAtLoginHelper",
            ],
            login_item: "HiDock"

  zap trash: [
    "~/Library/HTTPStorages/design.rafa.HiDock",
    "~/Library/Preferences/design.rafa.HiDock.plist",
    "~/Library/Saved Application State/design.rafa.HiDock.savedState",
  ]
end
