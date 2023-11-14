cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "23.8.3-1"
  sha256 arm:   "10844de40383483c83e2572b65ac0ae079e079dfdadcd611b464aaff5321a119",
         intel: "4578ed90780ad93a88f54100386264df7e4b4d70f40f5812705dca842742bc7d"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://github.com/hoppscotch/hoppscotch"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
  ]
end
