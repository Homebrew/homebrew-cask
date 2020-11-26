cask "dcp-o-matic-player" do
  version "2.14.45"
  sha256 "e8ed37ee7ac4a2beb3a29a0b2037f99c35efcf60255eb8aff850ae4fa14e1456"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
