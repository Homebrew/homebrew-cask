cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.3.2-0"
  sha256 arm:   "97c47aa56bbc9494ae8e2f252131491546a0bc55056c9e4a294049ff58c4f562",
         intel: "e874f623076368c8dff8f70debf91e09222a28020eb10aa870489b03ebf91897"

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
