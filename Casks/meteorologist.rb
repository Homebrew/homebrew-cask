cask 'meteorologist' do
  version '3.1.3'
  sha256 'dbe05396be6289939774941512af21407dd3aeabdc800f4db330490b2e31028e'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: 'f9372f2126975f489d1cc38da454b641b00c919c84eb29c89a053c63e0fc508f'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
