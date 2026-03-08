cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.2.1-0"
  sha256 arm:   "17d9046b5b6b64a9b6b14b3924c418f25c2433e56cd121467793466eb9b2b614",
         intel: "8f1a985773ac7c99637c58b93de303feb3a7a6eb84274fb4f25a338c24d994e7"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
