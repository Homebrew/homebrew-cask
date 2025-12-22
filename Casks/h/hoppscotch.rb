cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.12.0-0"
  sha256 arm:   "21d0b06de914449d0de6d6b0ecdc8834bf1195bd62fe311fc10d12bfa2b3d853",
         intel: "409bdba60405600d4ee31745ff08589657c13b13a37d9c6446085c1160177082"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
