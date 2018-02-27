cask 'comparemerge' do
  version '2.05y'
  sha256 'ef20e963dd08aa3e3e2e212293eda5373f4905aa9e522997f06cbda43ef5af52'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss',
          checkpoint: '589781619893788b062053663b651d711c7d666882cb8e3ee64b57c0c32a583c'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version}.app"
end
