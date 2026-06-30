cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.6.0-0"
  sha256 arm:   "d829e8281e3678bb37b49b3d6a8cefc9eda3d6e37f0d0190e0a38e7658a119a0",
         intel: "1b614f2ea5b158601988ab2412239e7e458e78da752ac2539fddc33502dfaa35"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"
  depends_on :macos

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
