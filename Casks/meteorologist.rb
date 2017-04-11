cask 'meteorologist' do
  version '3.0.3'
  sha256 '2717fd0b37f2b13d2b95d5bb19a6009b81b9f0847c194ca866c987f5c67e8499'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: 'cba49353b2ccd6ff04b16751caf48246ee91ac9869671092cc80ad15c04d0c32'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
