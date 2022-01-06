cask "hydrus-network" do
  version "468"
  sha256 "72c3f2e855880c61be324a0b2fe52e3da6ae37b3fb7d07fe316285a6b70e2b12"

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
