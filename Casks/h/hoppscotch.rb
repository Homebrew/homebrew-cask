cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.7.2-0"
  sha256 arm:   "ea4b510b11ffc2b1c25425b90a3d0e539a2142fc9a72911c6e18b62334ac5868",
         intel: "5d9f85c91dc599fe7071505dd254c2bf7978aad2fff930f2db9203ff4483979e"

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
