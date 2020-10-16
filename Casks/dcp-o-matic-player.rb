cask "dcp-o-matic-player" do
  version "2.14.40"
  sha256 "9af829f3a1dfedeb2283ac53f638809279bd5ece582593dd906695bb00009fea"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
