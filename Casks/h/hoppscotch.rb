cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.12.2-0"
  sha256 arm:   "b0453adaa023bce95f46ff8b1e0bce960154197273244a70861b1e1bce496fec",
         intel: "cba4de53658a0e219a96aab8f60a67979f7386154dff141ce289596c8647b43f"

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
