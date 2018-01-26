cask 'insync' do
  version '1.3.22.36179'
  sha256 '9d681d3a14449a64f1035245ddc848f0a03e86d4740b150876bfcef86dc1a7b9'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
