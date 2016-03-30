cask 'cookie' do
  version '4.5.4'
  sha256 'aab084c1a6109096e88f4d44dd75056224eeec9f1edf6ce0607921c62a995db5'

  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  appcast 'https://sweetpproductions.com/products/cookie/appcast.xml',
          checkpoint: 'eb19a184c68b0c976ee0aeb3f454b32246b3bc47a54564264356fe7a8a21d3d7'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
