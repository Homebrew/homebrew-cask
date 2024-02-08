cask "hidock" do
  version "1.2"
  sha256 "643b609ac5407746a020e211f028a212eb217a35a1f2cebb66557737acf1cbb6"

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
