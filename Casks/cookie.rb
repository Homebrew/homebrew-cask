cask 'cookie' do
  version '5.0.7'
  sha256 '736bc774b3fd73f439be4a33fbec67a7d6aed6e971df8c40b0f7315db7c4954f'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.dmg'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: '1f5dd90f3fde985de192b92eda0440c70d29e5eabd22c9565bbad44bcc110e6a'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
