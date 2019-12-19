cask 'dcp-o-matic-player' do
  version '2.14.18'
  sha256 '5b6dab262768fc98df5b17ad5264dc53b88c4520b89cb4c56c139ae2c1d2ad96'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
