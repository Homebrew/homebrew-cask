cask :v1 => '33-rpm' do
  version :latest
  sha256 :no_check

  url 'http://www.edenwaith.com/downloads/33rpm.dmg'
  name '33 RPM'
  appcast 'http://www.edenwaith.com/xml/33rpm.xml',
          :sha256 => '2b0e3f1d3f0221e6c59c703e07366003bd8608adf10e4374c4d4b41ec1273276'
  homepage 'http://www.edenwaith.com/products/33rpm/'
  license :gratis

  app '33 RPM.app'
end
