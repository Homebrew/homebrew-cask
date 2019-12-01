cask 'dcp-o-matic-player' do
  version '2.14.16'
  sha256 'fd19e77d2df861d333b9af8ad541171708daf5d4f1d1cbf9c5abbe934689fa0b'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
