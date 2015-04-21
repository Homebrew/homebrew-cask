cask :v1 => '33-rpm' do
  version :latest
  sha256 :no_check

  url 'http://www.edenwaith.com/downloads/33rpm.dmg'
  name '33 RPM'
  homepage 'http://www.edenwaith.com/products/33rpm/'
  license :gratis

  app '33 RPM.app'
end
