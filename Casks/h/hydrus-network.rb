cask "hydrus-network" do
  version "630"
  sha256 "f700a5782e4edb3d0753159f90ec7e1755057a4415b6b42edb803d5691956649"

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

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus"

  caveats do
    requires_rosetta
  end
end
