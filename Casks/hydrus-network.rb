cask "hydrus-network" do
  version "471"
  sha256 "13fc50a478ac373aa581c1e01ee1ba1bafb4b94306b38145a85e8724d43c7895"

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
