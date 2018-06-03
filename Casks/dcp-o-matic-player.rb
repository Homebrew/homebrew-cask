cask 'dcp-o-matic-player' do
  version '2.12.6'
  sha256 '3cb9b1064875d5a595d9d1a0a79bf60145f81421580ad3573f4a5e4906c3fb11'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download',
          checkpoint: '510616fe834b672a089e02a95abbb43f7bee5ba80793d30c4adfb48b8de1411d'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
