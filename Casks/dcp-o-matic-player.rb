cask 'dcp-o-matic-player' do
  version '2.14.15'
  sha256 'c257ce614c26b2e6a8eb622934be9b2111bae0291400ee1558cbec7c3784dbd9'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
