cask "dcp-o-matic-player" do
  version "2.14.54"
  sha256 "c979f2d2a4ba9b7b4ea3239e01387d9eb300b65f05e9fdf7db37ee90d9e880f7"

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
