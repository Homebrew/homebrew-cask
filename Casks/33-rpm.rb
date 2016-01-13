cask '33-rpm' do
  version :latest
  sha256 :no_check

  url 'http://www.edenwaith.com/downloads/33rpm.dmg'
  appcast 'http://www.edenwaith.com/xml/33rpm.xml',
          :checkpoint => '0d9f47ea3ad460c4d6d4ffe8701659c4b2ae9f94824aadd8d8baf6be9c9e684b'
  name '33 RPM'
  homepage 'http://www.edenwaith.com/products/33rpm/'
  license :gratis

  app '33 RPM.app'
end
