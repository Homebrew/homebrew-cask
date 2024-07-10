cask "freeorion" do
  version "0.5.0.1"
  sha256 "c6436383071148dbc7b5d63981ae7afebda52340710f603b35f0e22a0aa9ecf5"

  url "https://github.com/freeorion/freeorion/releases/download/v#{version}/FreeOrion_v#{version}_MacOSX_10.12.dmg",
      verified: "github.com/freeorion/"
  name "FreeOrion"
  desc "Turn-based space empire and galactic conquest game"
  homepage "https://freeorion.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "FreeOrion.app"

  zap trash: [
    "~/Library/Application Support/FreeOrion",
    "~/Library/Saved Application State/org.freeorion.FreeOrion.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
