cask 'dcp-o-matic-player' do
  version '2.12.12'
  sha256 'b3f94bd88964e9c4ffe36502d38ef43f6a23fb17d5e61b9df378a58d4d25fdc0'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
