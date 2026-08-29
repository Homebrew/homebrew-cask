cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.8.0-0"
  sha256 arm:   "defcfb9fa5a16f75999edf7b03af0babc4f3437cbe228850a0cc6db72bfb2500",
         intel: "e2832d6c21015f9422da20b2a6cc371af4f14e445620ef32b7939a3d71ccf9fb"

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
