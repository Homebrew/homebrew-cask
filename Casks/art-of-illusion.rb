cask 'art-of-illusion' do
  version '3.0.3'
  sha256 'fae41002dd05973f8d2e24383722f6f864321a8ff9fe40a0d839304f80cd0526'

  # sourceforge.net/aoi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/aoi/ArtOfIllusion#{version.no_dots}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/aoi/rss',
          checkpoint: 'c3567644fffdb188afc15ceb664a9058867d65986c119a4429feeedcfd63d676'
  name 'Art of Illusion'
  homepage 'http://www.artofillusion.org/'

  app "Art Of Illusion #{version}/Art Of Illusion #{version}.app"
end
