cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "23.12.4-1"
  sha256 arm:   "05b2d9c788da509afb109ca96f293fd14056c5beae844b8be1eb6bd018bb1d92",
         intel: "26e3cb5b4bf22cc1645779fe298c4eee0e8388c2ae4ac9d226b7ac5b3e184a61"

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
