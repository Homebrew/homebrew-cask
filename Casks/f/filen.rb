cask "filen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.40"
  sha256 arm:   "dfb0a0c11e07a97567785c6be5fc53142256cdd68eb4fd6f9bb30a531ec94fc5",
         intel: "4a5b644c632e49d0abe65957bb7a513ebb83753acfd1b8978af29602e085c6c9"

  url "https://cdn.filen.io/@filen/desktop/release/latest/Filen_mac_#{arch}.dmg"
  name "Filen"
  desc "Desktop client for Filen.io"
  homepage "https://filen.io/"

  livecheck do
    url "https://cdn.filen.io/@filen/desktop/release/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Filen.app"

  zap trash: [
    "~/Library/Application Support/@filen",
    "~/Library/Application Support/filen-desktop",
    "~/Library/Caches/@filendesktop-updater",
    "~/Library/Caches/io.filen.desktop",
    "~/Library/Caches/io.filen.desktop.ShipIt",
    "~/Library/HTTPStorages/io.filen.desktop",
    "~/Library/Logs/filen-desktop",
    "~/Library/Preferences/io.filen.desktop.plist",
    "~/Library/Saved Application State/io.filen.desktop.savedState",
  ]
end
