cask "hydrus-network" do
  version "631"
  sha256 "fabdb7b36f018da0f4afc71fa833eff1a6cd4980be590f750ecd15b47f86390c"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.zip",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus network"
  desc "Booru-style media tagger"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)*[a-z]?)/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :unsigned

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus"

  caveats do
    requires_rosetta
  end
end
