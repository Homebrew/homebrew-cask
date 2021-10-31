cask "dcp-o-matic-player" do
  version "2.14.55"
  sha256 "228084e6963f66c847d35254c55eefdf723bedbb3db689e876d1081ef68723c5"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/href=.*?id=osx[0-9._-]*player[^"']*?version=(\d+(?:\.\d+)*)/i)
  end

  app "DCP-o-matic #{version.major} Player.app"
end
