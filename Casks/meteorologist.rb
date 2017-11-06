cask 'meteorologist' do
  version '3.1.2'
  sha256 'a3df8370331f139be581b14c27f8d36f7369624625fde85a6826e5bf3be0af88'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '0ce6993bad176433889ef2f7772888a8180681d8ddb56aeeb027c60825e9857c'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
