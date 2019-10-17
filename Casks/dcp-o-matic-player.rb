cask 'dcp-o-matic-player' do
  version '2.14.11'
  sha256 '5bac5ef3040cbe2b318d947aae1cf31c0fe121a8fa0398f7210a7ce3a626347d'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
