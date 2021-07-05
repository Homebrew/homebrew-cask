cask "dcp-o-matic-player" do
  version "2.14.51"
  sha256 "56622938191ceec784f85241bc9e6872ad2170286c3f21294706c902e36d4857"

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
