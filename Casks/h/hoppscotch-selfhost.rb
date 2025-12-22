cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.12.0-0"
  sha256 arm:   "adeb94c81662ab973f3ab0c307466223c6943d33ecc495a1c99a94a5b89cd884",
         intel: "9d0b1a4ecf4b39839c9d7e77bc3dce34b5b405fe730810323b77a0e677645506"

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
