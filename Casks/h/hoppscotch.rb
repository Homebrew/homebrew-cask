cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.6.0-0"
  sha256 arm:   "41e23c06610939dce2edea27b0bb45e1241a6a1f0b252f9c79ee6905b5ae1c12",
         intel: "e02214f9a168e74135b8c588475740ead342635a8a88c1e70519062b9c772e38"

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
