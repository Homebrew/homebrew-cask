cask "hydrus-network" do
  version "603"
  sha256 "65ac5be9a9745642b14eb565ab53b17d1a66a5939d0a6e9e7310bbded5b823af"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
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

  zap trash: "~/Library/Hydrus/"

  caveats do
    requires_rosetta
  end
end
