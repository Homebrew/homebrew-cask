cask 'comparemerge' do
  version '2.10y'
  sha256 'fa25244eba6609956fb2bbaff363f5829c453b99db08d89b3601e026f6a3c406'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
