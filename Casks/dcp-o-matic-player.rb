cask "dcp-o-matic-player" do
  version "2.14.46"
  sha256 "6ea6e2ed927f26ad7dc45af01d89e198aeaa77e1591240f6fffd06bf37c980a4"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
