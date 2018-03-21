cask 'meteorologist' do
  version '3.1.3'
  sha256 'dbe05396be6289939774941512af21407dd3aeabdc800f4db330490b2e31028e'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '163b2844bfcff1d648e50e71335c8b57a00955a4c8ae3ce9b64cfd842c7cb25a'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
