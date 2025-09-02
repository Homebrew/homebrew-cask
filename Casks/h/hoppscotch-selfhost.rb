cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.8.1-0"
  sha256 arm:   "14187974ac71580c6f7f1846031fa59ba4af771a8d21307427512fc68a8c78c9",
         intel: "26bb0e29492adeae997bfa99b23ef72f692e675c2baddd8772d68510c5c7447c"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"
  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
