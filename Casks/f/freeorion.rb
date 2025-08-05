cask "freeorion" do
  version "0.5.1.1"
  sha256 "1bd19baeeb8c74da8510d078623a4689fecbc91de780809e838563900fab29c8"

  url "https://github.com/freeorion/freeorion/releases/download/v#{version}/FreeOrion_v#{version}_MacOSX_10.15.dmg",
      verified: "github.com/freeorion/"
  name "FreeOrion"
  desc "Turn-based space empire and galactic conquest game"
  homepage "https://freeorion.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "FreeOrion.app"

  zap trash: [
    "~/Library/Application Support/FreeOrion",
    "~/Library/Saved Application State/org.freeorion.FreeOrion.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
