cask 'comparemerge' do
  version '2.07y'
  sha256 'a585787cb58c1c37a0b8c58bd3882cfa3750689bd01dbefcb86ace3a334acd47'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
