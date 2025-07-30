cask "hydrus-network" do
  version "632"
  sha256 "f5a3f69be1a1bb043993aee3b7f270e9a28f8f26c6015acd50553d7b27ff0675"

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
