cask 'dat-weather-doe' do
  version '1.2.5'
  sha256 'cc3bd6aea7dda073b399fd32e4d0e77d7b453b3ef3fc39bac6cba491af9327d4'

  url 'https://github.com/inderdhir/DatWeatherDoe/releases/download/1.2.5/DatWeatherDoe-1.2.5.dmg'
  appcast 'https://github.com/inderdhir/DatWeatherDoe/releases.atom'
  name 'DatWeatherDoe'
  homepage 'https://github.com/inderdhir/DatWeatherDoe'

  app 'DatWeatherDoe.app'
end
