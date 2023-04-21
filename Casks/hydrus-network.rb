cask "hydrus-network" do
  version "524"
  sha256 "5aa5d2f801481e5dc1baf584881aebd30626a0e3809fa90a989d19d86a0f6e61"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Booru-style media tagger"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tree/v?(\d+(?:\.\d+)*[a-z]?)[^"' >]*?["' >]}i)
    strategy :github_latest
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
