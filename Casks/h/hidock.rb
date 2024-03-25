cask "hidock" do
  version "1.3"
  sha256 "26673a21c6d53b2e56e5769c19ad8232716c83b42897d949b8e420425d614010"

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
