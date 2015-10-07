cask :v1 => 'cookie' do
  version :latest
  sha256 :no_check

  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  appcast 'https://sweetpproductions.com/products/cookie/appcast.xml',
          :sha256 => 'd6ef4bf0370313d3f6c12c9016cca21e3b717effd51120d264c3edcc83dac805'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
