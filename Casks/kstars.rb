cask 'kstars' do
  version :latest
  sha256 :no_check

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url 'http://www.indilib.org/jdownloads/kstars/kstars-latest.dmg'
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
