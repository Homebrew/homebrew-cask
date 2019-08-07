cask 'meteorologist' do
  version '3.2.0'
  sha256 '26b135bc2ee3c70cf0c3c04bc3c5fb33e4d3e576b4c755d34fad445168edd041'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
