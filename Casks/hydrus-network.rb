cask "hydrus-network" do
  version "470b"
  sha256 "b6f7d01b1678f7d707f30d0fb1d29da42c477bed1f53a312a9a36ac722cf38d4"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/v?(\d+(?:\.\d+)*)/Hydrus[._-]Network}i)
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
