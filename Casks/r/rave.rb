cask "rave" do
  version "1.18.7"
  sha256 "3d3afe84da1ed6f6ac0c9481eb08403bb5aabce6c33f1430c89c1f9e64b8c32a"

  url "https://static.rave-web.com/rave-desktop/mac/x64/Rave-#{version}.dmg",
      verified: "static.rave-web.com/rave-desktop/mac/"
  name "Rave"
  desc "Social streaming app"
  homepage "https://rave.io/"

  livecheck do
    url "https://static.rave-web.com/rave-desktop/mac/x64/latest-mac.yml"
    strategy :electron_builder
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Rave.app"

  zap trash: [
    "~/Library/Application Support/Rave",
    "~/Library/Caches/io.rave.desktop",
    "~/Library/Caches/io.rave.desktop.ShipIt",
    "~/Library/Caches/rave-desktop-updater",
    "~/Library/HTTPStorages/io.rave.desktop",
    "~/Library/Logs/Rave",
    "~/Library/Preferences/io.rave.desktop.plist",
    "~/Library/Saved Application State/io.rave.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
