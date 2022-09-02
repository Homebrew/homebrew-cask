cask "hydrus-network" do
  version "498"
  sha256 "fdb5eef48246d14713f8bc146a0ee84062940355e00200387c5a84e859d15c25"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.Qt5.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+\h*)["' >]}i)
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
