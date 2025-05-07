cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.4.1-0"
  sha256 arm:   "de554e02dc1476b43fadab9fb0fdb6b125add126adcb2eb66f7e71e548baab28",
         intel: "01b0ebfd16dfe126f845335d9aad38f8858fe132385eb0eb9168a652fe873ae8"

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
