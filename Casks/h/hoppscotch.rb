cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.4.2-0"
  sha256 arm:   "7f702be50526d4c27f91f2d1b23c405359ae76926153adeec4476ed7b636ae6a",
         intel: "436d570fe2d6c7a6ffd9ee2a51a6c3a63c5a27b875cb3d93e196f22035809631"

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
