cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.5.0-0"
  sha256 arm:   "5132d9b1f4fbdfd13dd19d74c73512319e0f5d02117b1ebc0eb61ee326c3dbd1",
         intel: "c4719a903862a8a79349340e1cc2ecbff712a072a59fdc2c7bfbf0407aca82f9"

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
