cask "hidock" do
  version "1.0.1,629"
  sha256 "874095f3eb1281a1ed4822d4875723daa5cfbb5a248e2c84102bfc58f2b4453e"

  url "https://hidock.app/HiDock_#{version.csv.first}.zip"
  name "HiDock"
  desc "Set custom Dock settings for when on different displays"
  homepage "https://hidock.app/"

  livecheck do
    url "https://hidock.app/appcast.xml"
    strategy :sparkle
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
