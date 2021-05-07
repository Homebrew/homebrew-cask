cask "dcp-o-matic-player" do
  version "2.14.50"
  sha256 "adae4c833dca5032e77d0799c8f054b8fe16070f0190eba0b3fd40b580cd3ff2"

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
