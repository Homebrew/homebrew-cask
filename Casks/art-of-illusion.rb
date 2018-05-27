cask 'art-of-illusion' do
  version '3.0.3'
  sha256 '855683968480ef24520e998d157bf94865232b3dddd7d8b2431f4dc8d6782984'

  # sourceforge.net/aoi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/aoi/ArtOfIllusion#{version.no_dots}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/aoi/rss',
          checkpoint: 'c3567644fffdb188afc15ceb664a9058867d65986c119a4429feeedcfd63d676'
  name 'Art of Illusion'
  homepage 'http://www.artofillusion.org/'

  app "Art Of Illusion #{version}/Art Of Illusion #{version}.app"
end
