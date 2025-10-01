cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.9.1-0"
  sha256 arm:   "d93c7f68c1a415f2b8e8baefee985936d8a25b9040d48643457ce349530b4ee7",
         intel: "27cebbbfa40f512c43d977d9334e7f05fdc115d9b39485488248c6387b772038"

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
