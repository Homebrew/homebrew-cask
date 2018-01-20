cask 'comparemerge' do
  version '2.04x'
  sha256 'ae931453d050686f36c3a7dffe2660e85a95df4a2627dfa6da32f915e491a268'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss',
          checkpoint: '327ed1761975d44d1fc05aa459ff69f4931759e5881e9e68030a38dea4379ba2'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}/CompareMerge #{version}.app"
end
