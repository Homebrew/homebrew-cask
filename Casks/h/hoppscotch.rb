cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.7.1-0"
  sha256 arm:   "5a6f2e2eb9390b8b26d3ece85087b845efa3bf1fb9fe39c3af550770d941eb8a",
         intel: "da09100b523fd2d8b678ea23bf1cf2750bea988843ca3354e25ae24c58989e6a"

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
