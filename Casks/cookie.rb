cask 'cookie' do
  version '5.0.6'
  sha256 'c2a72c7bca45845899691513bd6bcbd201d39bbef9000e842009bae47a29f997'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.dmg'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: '7fabddffa68f6d1a0b9671cc4aab62865d43ffed5bc8e8873e1ba34fd58c7b1b'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
