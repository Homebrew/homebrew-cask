cask "foxglove" do
  version "2.32.1"
  sha256 "1004db6cc4e7f6380985f9090e0a095662b751826fb4eb038c1d47c7013ec876"

  url "https://get.foxglove.dev/desktop/latest/foxglove-#{version}-mac-universal.dmg"
  name "Foxglove"
  desc "Visualisation and debugging tool for robotics"
  homepage "https://foxglove.dev/"

  livecheck do
    url "https://get.foxglove.dev/desktop/latest/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Foxglove.app"

  zap trash: [
    "~/Library/Application Scripts/dev.foxglove.studio.quicklook",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.foxglove.studio.sfl*",
    "~/Library/Application Support/Foxglove Studio",
    "~/Library/Caches/dev.foxglove.studio",
    "~/Library/Caches/dev.foxglove.studio.ShipIt",
    "~/Library/Containers/dev.foxglove.studio.quicklook",
    "~/Library/Preferences/dev.foxglove.studio.plist",
    "~/Library/Saved Application State/dev.foxglove.studio.savedState",
  ]
end
