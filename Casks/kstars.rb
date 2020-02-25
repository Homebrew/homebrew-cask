cask 'kstars' do
  version '3.4.1'
  sha256 '688c7eb9a8ccd3ad41179ca4d935f42551b12969d966e7e157c470a819914855'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
