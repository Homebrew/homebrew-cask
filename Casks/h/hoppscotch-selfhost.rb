cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.0-0"
  sha256 arm:   "315adcd2ccb06f75571f0cbc2833640bd4e3c873ef75274af3cbcfce031a48d4",
         intel: "0fda9fd1d33f833e5f8f92363639865d882fa2134ab491d96a160fa86cea1e34"

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
