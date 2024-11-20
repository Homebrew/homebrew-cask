cask "filen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.34"
  sha256 :no_check

  url "https://cdn.filen.io/@filen/desktop/release/latest/Filen_mac_#{arch}.dmg"
  name "Filen"
  desc "Desktop client for Filen.io"
  homepage "https://filen.io/"

  livecheck do
    url "https://cdn.filen.io/@filen/desktop/release/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Filen.app"

  zap trash: [
    "~/Library/Application Support/filen-desktop",
    "~/Library/Logs/filen-desktop",
    "~/Library/Preferences/io.filen.desktop.plist",
    "~/Library/Saved Application State/io.filen.desktop.savedState",
  ]
end
