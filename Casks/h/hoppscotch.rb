cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.5.3-0"
  sha256 arm:   "121c13439db15022d2029576bcda3802a9c0ce7683692583b77dfda66c09bd85",
         intel: "0344ace892dc1da1f9a7b4d0ebb4d5000adefa7b7cda1c5581966016fa015b30"

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
