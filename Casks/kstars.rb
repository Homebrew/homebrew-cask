cask 'kstars' do
  version '3.3.8'
  sha256 '141b0b695399afff0b56b9cc2dc1bdc1c03a323092267003a1205bbe2b6198d9'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
