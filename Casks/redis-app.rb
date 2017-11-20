cask 'redis-app' do
  version '3.2.7-build.2'
  sha256 'd1a044ccce03ac1e96911dcd137d0c2e567719133c88cf036b11c8a8b9e331e7'

  # github.com/jpadilla/redisapp was verified as official when first introduced to the cask
  url "https://github.com/jpadilla/redisapp/releases/download/#{version}/Redis.zip"
  appcast 'https://github.com/jpadilla/redisapp/releases.atom',
          checkpoint: '7e4ef66a2f3fe10da84aaf00b93d3d6200816269c8637abd77f42f296dc18b40'
  name 'Redis'
  homepage 'https://jpadilla.github.io/redisapp/'

  app 'Redis.app'

  zap trash: [
               '~/Library/Caches/io.blimp.Redis',
               '~/Library/Preferences/io.blimp.Redis.plist',
             ]
end
