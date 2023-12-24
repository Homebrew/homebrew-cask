cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "23.12.1-1"
  sha256 arm:   "fd37b2bb3f6db4163bc8aa93c1d9ac0235486cce0463e5c46efe4e0a5ebe7530",
         intel: "504295faf22b77bb58773801ce775d6d22f39a2d960e87601f7c67499f0cb8f2"

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
