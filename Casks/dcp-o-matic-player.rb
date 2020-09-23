cask "dcp-o-matic-player" do
  version "2.14.38"
  sha256 "9a113015ed7f844a44d1a2da6d0a89f9c74c83f88a0f7b55bfde0f2244c254b6"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
