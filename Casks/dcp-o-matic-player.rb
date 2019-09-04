cask 'dcp-o-matic-player' do
  version '2.14.10'
  sha256 'ef4f64af0d24c2f7a54b7f2b30acff621d1b56a4524a06fce7ddfdee34646090'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
