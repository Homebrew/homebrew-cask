cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.1-0"
  sha256 arm:   "9447eb8b965379d94783b55757ab95eb777049cf2a7ad5c5fc20e9f5dfc0bc7d",
         intel: "1851562a2d3c2852da68726015cef91ad6c89624b2652918fc307dbab562f905"

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
