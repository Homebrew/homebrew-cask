cask :v1 => 'gisto' do
  version '0.3.0'
  sha256 '803a15125b69486012f72a42dd20f7a63b51dc2d445082303cb3b96cdb622667'

  url "http://download.gistoapp.com/Gisto-#{version}-OSX_x86_64.dmg"
  appcast 'http://www.gistoapp.com/GistoAppCast.xml'
  name 'Gisto'
  homepage 'http://www.gistoapp.com/'
  license :mit

  app 'Gisto.app'
end
