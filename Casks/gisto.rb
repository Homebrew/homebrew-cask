cask :v1 => 'gisto' do
  version '0.2.6b'
  sha256 '7dffc22e5274e7ee88194f59a950e26d41fd1463d50785ffaf117ad5dd892840'

  url "http://download.gistoapp.com/Gisto-#{version}-OSX_x86.dmg"
  appcast 'http://www.gistoapp.com/GistoAppCast.xml'
  homepage 'http://www.gistoapp.com/'
  license :unknown

  app 'Gisto.app'
end
