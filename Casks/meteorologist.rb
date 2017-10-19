cask 'meteorologist' do
  version '3.1.0'
  sha256 '5a5725542a1fe0bd56598ac1c6e576ec372eea6a54bd48ed2f46f34377d6de37'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '7b53399eb312cc7f0af77419f57a0bd45f15db9b5032f4732da9f33f160c7dde'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
