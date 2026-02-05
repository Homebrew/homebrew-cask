cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.1.1-0"
  sha256 arm:   "3be2c9160ee3b346a74312b3aee56e6963b8244e8cef419cabc4e8c1e8d62c87",
         intel: "c85d5fca4fbe0a2812fec0f6aadb4cdded87e03c6ad305cce9b7b7d9e825d2dd"

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
