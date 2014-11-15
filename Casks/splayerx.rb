cask :v1 => 'splayerx' do
  version '1.1.8'
  sha256 '75a3decacd5a8efe5b6f5638999281159cb7ddf598d158a89f3d6e157c276433'

  url "http://bitbucket.org/Tomasen/splayerx/downloads/SPlayerX_#{version}.zip"
  homepage 'https://bitbucket.org/Tomasen/splayerx/wiki/Home'
  license :oss

  app 'SPlayerX.app'
end
