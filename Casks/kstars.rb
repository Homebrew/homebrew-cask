cask 'kstars' do
  version '3.4.0'
  sha256 'cffe7ec51c7cd06356634832d2432d032eb266549f00e9f1afef20456dc4bf67'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
