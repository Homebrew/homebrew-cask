cask "hydrus-network" do
  version "495"
  sha256 "8b53170d1954d384dc4005cf27dfc44e0d1d61482424929b877d961091cfa3dc"

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
