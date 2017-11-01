cask 'comparemerge' do
  version '2.03x'
  sha256 'ed6f53dd59481868ff29dc1d8800f5a821d918ce7fee1677f450bf302f23025c'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss',
          checkpoint: '0f230c9700bd27af2530109a80f788da31766bbcc708f98f9401256f62fa3d16'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}/CompareMerge #{version}.app"
end
