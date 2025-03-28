cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.3.0-0"
  sha256 arm:   "7b6b08889846bf8e2f44f952cf643bc6a75729609522c1b9e581480ee25d524f",
         intel: "d94bc3cf4428a3ef8aa8d2eb4935f495452795105bdf0a4d01bbfd0b78a44d9b"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
