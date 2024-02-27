cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "23.12.6-1"
  sha256 arm:   "c4fed25391faf1ad6ba8a513c5e24f9f812552fc2d1820825f203b396e71fa1d",
         intel: "d804d1bd363db9097806ec2f1e6af9c9112db07664b003083f5f16741137d97a"

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
