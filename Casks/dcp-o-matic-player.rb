cask "dcp-o-matic-player" do
  version "2.14.41"
  sha256 "50d7687cf5a7450c87d1e10353774d199c7941a77d8f412077c331e50d751571"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
