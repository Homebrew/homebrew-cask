cask :v1 => 'gisto' do
  version '0.3.1'
  sha256 '93df9da2888f1cca3e649ccc30b8c4784e95ad22000c77d684d89363d873cbba'

  url "http://download.gistoapp.com/Gisto-#{version}-OSX_x86_64.dmg"
  appcast 'http://www.gistoapp.com/GistoAppCast.xml'
  name 'Gisto'
  homepage 'http://www.gistoapp.com/'
  license :mit

  app 'Gisto.app'
end
