cask 'redis' do
  version '3.0.7-build.2'
  sha256 'df9e7b0202a3c8ba7a68688580452875814e4f3ec9f2cc6521cd8786832b11f7'

  # github.com/jpadilla/redisapp was verified as official when first introduced to the cask
  url "https://github.com/jpadilla/redisapp/releases/download/#{version}/Redis.zip"
  appcast 'https://github.com/jpadilla/redisapp/releases.atom',
          checkpoint: 'ae15c3ec4aaf960ca647527ad0e8447c5edb1c3b3ece4784bd4da45d43eafc9e'
  name 'Redis'
  homepage 'https://jpadilla.github.io/redisapp/'
  license :mit

  app 'Redis.app'

  zap delete: [
                '~/Library/Caches/io.blimp.Redis',
                '~/Library/Preferences/io.blimp.Redis.plist',
              ]
end
