cask "hoppscotch" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.2.0-0"
  sha256 arm:   "12f2e308c894224e9f48c7c3e03e9d1d5d991cfe18ceba59604d31a85f2c546c",
         intel: "2161be897cc8b48e531ef5d1321f69ee8a296eb8b2e8729264326f9e0c7c357a"

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
