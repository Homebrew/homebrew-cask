cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.11.1-0"
  sha256 arm:   "b701016ebd34b94610aba7c6732c1bfcbdd2742c0cc93f4286863b23bcad72e1",
         intel: "4dc129fb12513e641df324793907a585de4a88365dec86316fc6559e92a662ca"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
