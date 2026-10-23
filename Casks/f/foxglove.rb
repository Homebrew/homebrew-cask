cask "foxglove" do
  arch arm: "arm64", intel: "x64"

  version "3.4.2"
  sha256 arm:   "cb69351ae8c42cf5dea01fadd26b1c8c7682578ed083fa6bb096d0a41708d19d",
         intel: "c97e0e16df93a3854d2093cab42f07ebec897a1d451ddc6b5a147d49bbeebbbf"

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
    "~/Library/Application Support/Foxglove",
    "~/Library/Caches/dev.foxglove.studio",
    "~/Library/Caches/dev.foxglove.studio.ShipIt",
    "~/Library/Containers/dev.foxglove.studio.quicklook",
    "~/Library/Preferences/dev.foxglove.studio.plist",
    "~/Library/Saved Application State/dev.foxglove.studio.savedState",
  ]
end
