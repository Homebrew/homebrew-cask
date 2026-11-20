cask "firefly-shimmer" do
  version "2.2.2"
  sha256 "123a710a8e42a717c29df2f96b722e2507b2ee5593aa699893aee4947dedbb06"

  url "https://github.com/iotaledger/firefly/releases/download/desktop-shimmer-#{version}/firefly-shimmer-desktop-#{version}.dmg"
  name "Firefly Shimmer"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  deprecate! date: "2026-11-08", because: :discontinued

  auto_updates true
  depends_on :macos

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
