cask "foxglove" do
  arch arm: "arm64", intel: "x64"

  version "2.55.0"
  sha256 arm:   "4dea17e1404ed135367139f42f6b5842ca26df65ac9c8c9cc55f5f9efe382f6a",
         intel: "cddfbae67502ce1c1799f3e8884eb23a0473c68d4cb00d4046e0409f044ae994"

  url "https://get.foxglove.dev/desktop/latest/foxglove-#{version}-mac-#{arch}.dmg"
  name "Foxglove"
  desc "Visualisation and debugging tool for robotics"
  homepage "https://foxglove.dev/"

  livecheck do
    url "https://get.foxglove.dev/desktop/latest/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

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
