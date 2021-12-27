cask "hydrus-network" do
  version "467"
  sha256 "dae597c66a6f22148b1cddcde75972c1444255967a63b8aab55c3cbd8568946d"

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
