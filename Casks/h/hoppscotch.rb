cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.6.1-0"
  sha256 arm:   "a50006f2344e6d36983812a01d1c9dab58a53bb3b99f07994a84fbd3075c51f0",
         intel: "a51681a613dc59f0a0604d3792d87811e148e26ae8487838af59a6c100ca84b8"

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
