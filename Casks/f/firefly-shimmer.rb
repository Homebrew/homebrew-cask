cask "firefly-shimmer" do
  version "2.1.5"
  sha256 "aaf5d74c57b1dfe58889aeb324d923f89f82ca8b56a1dbd4fc7844ccbdcb06ab"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-#{version}/firefly-desktop-#{version}.dmg",
      verified: "github.com/iotaledger/firefly/"
  name "Firefly Shimmer"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Firefly Shimmer.app"

  uninstall quit: "org.iota.firefly"

  zap trash: [
    "~/Library/Application Support/Firefly",
    "~/Library/Logs/Firefly",
    "~/Library/Preferences/org.iota.firefly.helper.plist",
    "~/Library/Preferences/org.iota.firefly.plist",
    "~/Library/Saved Application State/org.iota.firefly.savedState",
  ]
end
