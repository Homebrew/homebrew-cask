cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.6.1-0"
  sha256 arm:   "5a3950cf0e6c5174bf8592b38488e7dc88692fc2dbe9b0c2900d83c6446dd24b",
         intel: "dfab9b69302ca36b2d199bc75dac05e9fb4f4d3adaf99d0f721c42f3b73ffeab"

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
