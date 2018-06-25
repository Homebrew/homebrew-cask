cask 'comparemerge' do
  version '2.06y'
  sha256 '8dd55903e667d1999d133d62fa765ff0dfd750df73e5e55c34f542f5e54b5db2'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
