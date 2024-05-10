cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.3-1"
  sha256 arm:   "962b4e611b143b1e95a640352cfc7b68619a82a2152fd7e036c6283f99ffda6a",
         intel: "506f3d16ff49f129f33d5a083b5e8b3a9af13e666ebbfcf2a31d5bfa39fe78dc"

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
