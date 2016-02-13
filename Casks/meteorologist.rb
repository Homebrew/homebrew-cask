cask 'meteorologist' do
  version '2.0.1'
  sha256 '1c1c85129e6fe904823a3ce83b056c7304505fec98d27ec0fb36dcf7cd16a16b'

  url "http://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'
  license :oss

  app 'Meteorologist.app'
end
