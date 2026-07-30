cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.0-0"
  sha256 arm:   "a91fde5fdb434c167369357225530ee65e0165f5e82b673beb700f727f3b1d85",
         intel: "285061f2af773686074412218a3c8793e424c649c883adbc6795234aaee632a5"

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
