cask 'comparemerge' do
  version '2.11y'
  sha256 'd8abb9e7f2786563ec708a7fe3215f1b6de121a834da33cc94b7a3b44e64371d'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
