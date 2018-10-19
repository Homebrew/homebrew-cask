cask 'comparemerge' do
  version '2.09y'
  sha256 '5be37fca9fba28c38ab392ef33e80321617c6bfac541cfaaaa6a7406eb1d6a87'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
