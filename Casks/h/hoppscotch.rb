cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "23.12.5-1"
  sha256 arm:   "594256dfcbd0ee8e4a1260b18559c9d37fdfe6d3ce4d871cceb11c9ade8d4826",
         intel: "6d0143fbd2287a58a75985277736d5bcf35a45d7ba0023efc3d89f5fd998767a"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://github.com/hoppscotch/hoppscotch"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
