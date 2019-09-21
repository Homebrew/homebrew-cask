cask 'comparemerge' do
  version '2.11(2)y,104'
  sha256 '4f386114f41a4faf2056db5744489aa011b65bc55949194891b2ee7690e7e098'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version.before_comma}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version.before_comma}.app"
end
