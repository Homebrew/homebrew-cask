cask "foxglove" do
  arch arm: "arm64", intel: "x64"

  version "2.51.0"
  sha256 arm:   "c8be56af8cd382e9e64a2e6d23b2c33a9ce945ca578670d60bf2411c63922e5c",
         intel: "beab47ac703a08f72ac87236c489cb481370f3fe24aa75db05e21e402ced4c19"

  url "https://get.foxglove.dev/desktop/latest/foxglove-#{version}-mac-#{arch}.dmg"
  name "Foxglove"
  desc "Visualisation and debugging tool for robotics"
  homepage "https://foxglove.dev/"

  livecheck do
    url "https://get.foxglove.dev/desktop/latest/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
