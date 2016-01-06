cask 'cookie' do
  version '4.5.4'
  sha256 'aab084c1a6109096e88f4d44dd75056224eeec9f1edf6ce0607921c62a995db5'

  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  appcast 'https://sweetpproductions.com/products/cookie/appcast.xml',
          :sha256 => '21c4d103e45e35c8b5a75e851b9981cf75ccafa2acabc4cc2667b3f378a5cc61'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
