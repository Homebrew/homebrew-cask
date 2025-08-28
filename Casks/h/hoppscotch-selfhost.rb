cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.8.0-0"
  sha256 arm:   "84a4a1e0b07b10b5b5d63f5f1ad9cb7aa634ace51d73c7713c87d2dbb6954bb7",
         intel: "7a48e5a5f62fc6fb39f892e8982bb6522a5721d3dcfbede121ae330d61800445"

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
