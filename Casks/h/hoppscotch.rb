cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.8.0-0"
  sha256 arm:   "a1aba6712a80cf346ac0502b649d1ddb4170747e54209e98853d20bf06cb5f36",
         intel: "dc8bdb027a189c2c112258463564d02072f4dc5fd6c78b3b22d4f1424545984d"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
  depends_on :macos

  app "Hoppscotch.app"

  uninstall quit: "io.hoppscotch.desktop"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
