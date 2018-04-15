cask 'kstars' do
  version '2.9.4'
  sha256 '27c78fcccb3c96cd37f9c2a71f557a60ee6698c5baf170d1adfac3571d5ff9a6'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "http://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
