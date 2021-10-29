cask "hydrus-network" do
  version "459.2"
  sha256 "164603c7594a9d2ea75ecfd1b068c56c190ed77a4b420d062dee525639cdc2bc"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  app "Hydrus Network.app"

  zap trash: [
    "~/Library/Hydrus/",
  ]
  livecheck do
    url "https://github.com/hydrusnetwork/hydrus.git"
    strategy :git do |tags|
      # Software dev released a hotfix for docker, but has no build artifacts for any clients
      # so we're manually omitting it here.
      tags.map { |tag| tag=="v459.3"? nil : tag }.compact
    end
  end
end
