cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.10.0-0"
  sha256 arm:   "89305512e0012846f4173843a74598387241dbf8eccc2d15b2a4b4bfea81f2a1",
         intel: "27360e77940212f7a0d6d4d94b4d6ce6cfc38ac2427e0e62cedf7c1ac5f796aa"

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
