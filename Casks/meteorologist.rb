cask :v1 => 'meteorologist' do
  version '1.6.1'
  sha256 '15243a845062d87bf67e6a26b8da011e00c50a5f24def460cc685532d7d720a4'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  homepage 'http://heat-meteo.sourceforge.net/'
  license :oss

  app 'Meteorologist.app'
end
