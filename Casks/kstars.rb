cask 'kstars' do
  version '2.9.6'
  sha256 '7c2d237a543d88acf426f71cc4e60cb3097e458a61a6f4965058143fa86a71f5'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "http://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
