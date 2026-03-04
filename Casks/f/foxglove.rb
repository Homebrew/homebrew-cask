cask "foxglove" do
  arch arm: "arm64", intel: "x64"

  version "2.47.0"
  sha256 arm:   "55b013e710487c83bba0a2606b10350d8017182d5d171d9e2007fcaad9523b05",
         intel: "3e1b79ea253750f32387d1cf31d1de468e72f07fd49c2c5e8175e0b2e89889b2"

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
