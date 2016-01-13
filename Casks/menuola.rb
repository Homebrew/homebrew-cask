cask 'menuola' do
  version '2.0'
  sha256 'd97170adab805f1a52fef6c59287724783d80b5b23821dd97c0a85b4a72261dd'

  url "https://geocom.co.nz/downloads/Menuolav#{version.to_i}.dmg.zip"
  appcast 'https://www.geocom.co.nz/menuola.xml',
          :checkpoint => '1531b42ffde4876b29b74e2285e0507c26d41b5cef624edcc6adaff28b58cb16'
  name 'Menuola'
  homepage 'https://www.geocom.co.nz'
  license :gratis

  container :nested => 'Menuola.dmg'

  app 'Menuola.app'
end
