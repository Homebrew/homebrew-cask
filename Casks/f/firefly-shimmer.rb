cask "firefly-shimmer" do
  version "2.1.15"
  sha256 "72d839552c21e33b9e8d2b5775d074f7dfea6a4e520e2aec27da15e68777bbeb"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-shimmer-#{version}/firefly-shimmer-desktop-#{version}.dmg",
      verified: "github.com/iotaledger/firefly/"
  name "Firefly Shimmer"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url "https://dl.firefly.iota.org/shimmer-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefly Shimmer.app"

  uninstall quit: "org.iota.firefly"

  zap trash: [
    "~/Library/Application Support/Firefly",
    "~/Library/Logs/Firefly",
    "~/Library/Preferences/org.iota.firefly.helper.plist",
    "~/Library/Preferences/org.iota.firefly.plist",
    "~/Library/Saved Application State/org.iota.firefly.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
