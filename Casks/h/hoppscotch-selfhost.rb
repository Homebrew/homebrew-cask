cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.0-0"
  sha256 arm:   "c06d282d4743cb017628d67e017f02735b9c2134322a9bacbecb4a852e9c85a1",
         intel: "9e1312d8f45da19acda0e2daacdd2791e7ec5fa3b6292d9ebb68562b532aa9f3"

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
