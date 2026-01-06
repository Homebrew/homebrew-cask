cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.12.1-0"
  sha256 arm:   "c33d82a417cbba66b80a83db042edd44ec5a5d94af8af7479ff4d7e3415a90e5",
         intel: "06c9f43e69a98836f0b4fab5594b2b6e49fe310dc11594e7a2bba43b44699f34"

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
