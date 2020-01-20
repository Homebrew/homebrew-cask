cask 'dcp-o-matic-player' do
  version '2.14.23'
  sha256 'f2cd7961d328aefe7b89bde1137954d8f23d261bdd6981776de5b92c122cf730'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
