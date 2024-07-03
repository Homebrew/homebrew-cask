cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.6.0-2"
  sha256 arm:   "1888a5e5c48f97f63eb27eabdc66cf97e0caaca7df5590d3af931e6348501714",
         intel: "d1a32a895c3d752c7a6918d2efec391cd3f60278a13c3abeda5abf8326decaae"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://github.com/hoppscotch/hoppscotch"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
