cask 'dcp-o-matic-player' do
  version '2.12.6'
  sha256 '3cb9b1064875d5a595d9d1a0a79bf60145f81421580ad3573f4a5e4906c3fb11'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  name 'DCP-o-matic 2 Player'
  homepage 'https://dcpomatic.com/'

  app 'DCP-o-matic 2 Player.app'
end
