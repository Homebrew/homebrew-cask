cask "firefly-shimmer" do
  version "2.1.14"
  sha256 "86dfe14e815c4faa3bb2c60d1d813493746dbb4cae4eb59239b9212de3586a33"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-shimmer-#{version}/firefly-shimmer-desktop-#{version}.dmg",
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
