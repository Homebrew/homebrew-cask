cask 'redis' do
  version '3.0.7-build.1'
  sha256 'c0a94b34f913f40cf595dd3b954ab6949ad98c1a83d0b79fa1c95e6ec8366847'

  # github.com/jpadilla/redisapp was verified as official when first introduced to the cask
  url "https://github.com/jpadilla/redisapp/releases/download/#{version}/Redis.zip"
  appcast 'https://github.com/jpadilla/redisapp/releases.atom',
          checkpoint: '108664e2e870fcb286105d432b866666d4ebca39783f2d179ce9a9bab883a39d'
  name 'Redis'
  homepage 'https://jpadilla.github.io/redisapp/'
  license :mit

  app 'Redis.app'

  zap delete: [
                '~/Library/Caches/io.blimp.Redis',
                '~/Library/Preferences/io.blimp.Redis.plist',
              ]
end
