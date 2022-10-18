cask "hydrus-network" do
  version "502a"
  sha256 "d0b05f0c9a216f67f169150e5138a24b1f6dc964637fe0778284bc53d572f2a5"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.Qt5.-.App.dmg",
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
