cask :v1 => 'cookie' do
  version :latest
  sha256 :no_check

  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  appcast 'https://sweetpproductions.com/products/cookie/appcast.xml',
          :sha256 => 'dc629e015594e795d8c1f9ac94c4d2ead2317b18f3a06aaf701185106c49c8a3'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
