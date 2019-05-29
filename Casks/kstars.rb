cask 'kstars' do
  version '3.2.2'
  sha256 '46fdd6a34bb0a2e4af09cc2dd2de3933ec6ec363037345f7ed5c9f2d189fc4a4'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
