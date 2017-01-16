cask 'art-of-illusion' do
  version '3.0.3'
  sha256 '855683968480ef24520e998d157bf94865232b3dddd7d8b2431f4dc8d6782984'

  # sourceforge.net/aoi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/aoi/ArtOfIllusion#{version.no_dots}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/aoi/rss',
          checkpoint: 'c34642e02f465fc46f2e02bf90f1e793499f6c8f2918a8f4d73a301a88e93d30'
  name 'Art of Illusion'
  homepage 'http://www.artofillusion.org/'

  app 'Art of Illusion/Art of Illusion.app'
end
