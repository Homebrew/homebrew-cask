cask 'dcp-o-matic-player' do
  version '2.12.10'
  sha256 'bb18cd6b719be1536f4cbff506960afd2f9a9e04d6be8d07edf4fd4da281e7aa'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
