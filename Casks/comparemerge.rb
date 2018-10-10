cask 'comparemerge' do
  version '2.08y'
  sha256 '9bf4d138790b6b10d8f0739e92d1a491a506c1e4f5d7e13c1c110352bde76d06'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
