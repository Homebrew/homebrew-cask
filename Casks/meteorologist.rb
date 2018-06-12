cask 'meteorologist' do
  version '3.1.3'
  sha256 'dbe05396be6289939774941512af21407dd3aeabdc800f4db330490b2e31028e'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
