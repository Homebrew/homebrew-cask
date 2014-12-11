cask :v1 => 'menuola' do
  version '2.0'
  sha256 'd97170adab805f1a52fef6c59287724783d80b5b23821dd97c0a85b4a72261dd'

  url "http://geocom.co.nz/downloads/Menuolav#{version.to_i}.dmg.zip"
  appcast 'http://www.geocom.co.nz/menuola.xml',
          :sha256 => 'e18b081046702171648c929872c692adc2d1b816f5e9aff93b0612a11a3ea362'
  homepage 'http://www.geocom.co.nz'
  license :unknown    # todo: improve this machine-generated value

  container :nested => 'Menuola.dmg'
  app 'Menuola.app'
end
