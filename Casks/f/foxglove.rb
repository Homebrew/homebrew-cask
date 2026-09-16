cask "foxglove" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "7a0e867980da1d5ee0d008788663d3221bc701b3401cd7a65b8a1c7e0407a288",
         intel: "cb2c8ca149cd179e7e9cf753bf57a9186fe0a4ae0a4b371bbc454eaa15efb441"

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
