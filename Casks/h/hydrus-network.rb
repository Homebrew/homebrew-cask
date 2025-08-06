cask "hydrus-network" do
  version "633"
  sha256 "c4a6aee6ef13475098310a4bea0eb659be456061d73731b4e34d06c012c136a4"

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
