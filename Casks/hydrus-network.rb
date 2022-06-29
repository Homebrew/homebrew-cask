cask "hydrus-network" do
  version "490"
  sha256 "c9ea7664c826af3b1c9ed8703a151b4430e0bc4936c8c3eda6e581169211c1ce"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
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
