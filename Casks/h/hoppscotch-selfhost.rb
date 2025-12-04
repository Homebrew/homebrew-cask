cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.11.1-0"
  sha256 arm:   "a5445206467d04162766bb110c0b5d562cd61f7279ca0c204cb61e892b662be9",
         intel: "51ac13f454979b2c1f160480ae86dcddf986cadd941252970d3b56f7225b882c"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
