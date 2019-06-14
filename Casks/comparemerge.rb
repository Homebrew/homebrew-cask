cask 'comparemerge' do
  version '2.11y'
  sha256 '174de376f465c036c3da7d74d7f87f4475cb3e3e73ed197645338ba89c8f284d'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
