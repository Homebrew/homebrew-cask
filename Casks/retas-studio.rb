cask 'retas-studio' do
  version '6.6.0'
  sha256 '387d299ac77dad4a4116605e492e7c69614c463cde2ce5df439caaa55c9befb5'

  # clip-studio.com is the official download host per the vendor homepage
  url "https://www.clip-studio.com/clip_site/rental/rental_download/rsrental/dl?f=lib/retasstudio/data/#{version.delete('.')}/RS_#{version.delete('.')}_app.dmg"
  name 'RETAS STUDIO'
  homepage 'http://www.retasstudio.net/'
  license :commercial

  app 'RETAS STUDIO.app'
end
