cask 'meteorologist' do
  version '3.1.4'
  sha256 'ade644cbe2faad927c1bbede7479d873fe48471f94610da50dcdd8160ca0f812'

  # downloads.sourceforge.net/heat-meteo was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss'
  name 'Meteorologist'
  homepage 'https://heat-meteo.sourceforge.io/'

  app 'Meteorologist.app'
end
