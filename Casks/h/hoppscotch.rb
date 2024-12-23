cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.12.0-0"
  sha256 arm:   "a4cf6ce6b45bfd5b3024408ae382aedab49ae1aee4a4a84933db7ab91ffa07d0",
         intel: "bd76527a8816049b7b7afd1b99607931661c78f82ad67a06ddd8d4f248d9ba64"

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
