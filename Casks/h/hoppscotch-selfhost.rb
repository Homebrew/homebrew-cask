cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.2.1-0"
  sha256 arm:   "0a1406b82efd4cd19fe2a60c5eb79c5f851a1ce209ebbaf3db10c17fad750735",
         intel: "329ab83fbf7a6432f83401a569d10604a04d5066f74cbcb7f56c6f8deb7844e0"

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
