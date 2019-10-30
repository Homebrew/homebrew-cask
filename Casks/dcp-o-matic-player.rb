cask 'dcp-o-matic-player' do
  version '2.14.12'
  sha256 '17c4cbb63f844a2ede1da2a75793dfdfb3ef347a331be424f0d3a8762467e04b'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
