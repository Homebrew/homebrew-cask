cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.1-0"
  sha256 arm:   "f4085cfc68b8311825a16343f36959421586da847ce45cadb33d81622f9f5697",
         intel: "617bcbcdd9b8f77c40bc246e460d16c014c9e155ca3b9d30cebd937d637727ce"

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
