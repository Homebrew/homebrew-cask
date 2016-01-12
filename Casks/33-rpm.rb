cask '33-rpm' do
  version :latest
  sha256 :no_check

  url 'http://www.edenwaith.com/downloads/33rpm.dmg'
  appcast 'http://www.edenwaith.com/xml/33rpm.xml',
          :sha256 => '0e07936b3b36c0c116773b53907c6ad1fa9a0f0b993342843bf866e6cc5c8433'
  name '33 RPM'
  homepage 'http://www.edenwaith.com/products/33rpm/'
  license :gratis

  app '33 RPM.app'
end
