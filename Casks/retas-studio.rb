cask 'retas-studio' do
  version '6.6.0'
  sha256 '387d299ac77dad4a4116605e492e7c69614c463cde2ce5df439caaa55c9befb5'

  # clip-studio.com was verified as official when first introduced to the cask
  url "https://www.clip-studio.com/clip_site/rental/rental_download/rsrental/dl?f=lib/retasstudio/data/#{version.no_dots}/RS_#{version.no_dots}_app.dmg"
  name 'RETAS STUDIO'
  homepage 'http://www.retasstudio.net/'

  app 'RETAS STUDIO.app'
end
