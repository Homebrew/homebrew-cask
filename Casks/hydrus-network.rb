cask "hydrus-network" do
  version "518"
  sha256 "1b4905104ecc597f45e93b09f4696f3d2b5dbc4c6a33ddbc4378e9c2b2324fe4"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tree/v?(\d+(?:\.\d+)*[a-z]?)[^"' >]*?["' >]}i)
    strategy :github_latest
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
