cask 'cookie' do
  version '4.5.4'
  sha256 'aab084c1a6109096e88f4d44dd75056224eeec9f1edf6ce0607921c62a995db5'

  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  appcast 'https://sweetpproductions.com/products/cookie/appcast.xml',
          :checkpoint => 'ee4bee9680afd30f0d10111f96a52b5e9cfbbbb030371b4878384ee5854e6910'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
