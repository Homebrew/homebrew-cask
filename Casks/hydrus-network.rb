cask "hydrus-network" do
  version "458"
  sha256 "3f8864cdfeec98ec0dce8dbb7a63e51c8e7a76cf1d737fd1fe4b08e727810350"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  app "Hydrus Network.app"

  zap trash: [
    "~/Library/Hydrus/",
  ]
end
