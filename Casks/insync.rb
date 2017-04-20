cask 'insync' do
  version '1.3.14.36131'
  sha256 '09b8fe28401ba90a16d054ff81ee7fee5779296fe466a40ce0fdf8378ff50439'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  app 'Insync.app'
end
