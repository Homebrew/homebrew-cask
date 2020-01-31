cask 'dcp-o-matic-player' do
  version '2.14.25'
  sha256 '81b1d37f3863a9203329e330c48c2a16db0604c5becf875fa2390e2e84239f79'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
