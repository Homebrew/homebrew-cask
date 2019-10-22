cask 'kstars' do
  version '3.3.6'
  sha256 'b998cd6a30e6375871fb0eb5d3c29c1a055bfc172541b0192bec909dc1c1a7b7'

  # indilib.org/jdownloads/kstars was verified as official when first introduced to the cask
  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg"
  name 'KStars'
  homepage 'https://edu.kde.org/kstars/'

  app 'kstars.app'
end
