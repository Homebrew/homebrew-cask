cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.1.1-0"
  sha256 arm:   "262b8cd9ccb0cc3a7c58dc06f21191fa3ecfb0c59d0b2d8f9b1fbfc64b69fd22",
         intel: "e8f524e2ecdcf7e5e4d49ff3bd0f0f70062d00c5d883539edb7aca36a603a515"

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
