cask 'gitfinder' do
  version '1.0.1'
  sha256 '32db5cdbee65e118449ebc91527b66ef3cb350f5b11ea1e228f3b89ade83ce1a'

  # zigz.ag/GitFinder was verified as official when first introduced to the cask
  url 'https://zigz.ag/GitFinder/updates/GitFinder.dmg'
  appcast 'https://zigz.ag/GitFinder/updates/stablecast.xml',
          checkpoint: '369d5678fa01f3b4600f70e70fd787f86ed31176f55ef3b8d1c8053e5b6ca046'
  name 'GitFinder'
  homepage 'https://gitfinder.com/'

  app 'GitFinder.app'

  uninstall launchctl: 'ag.zigz.GitFInder.GitFinderLauncher',
            quit:      [
                         'ag.zigz.GitFinder',
                         'ag.zigz.GitFinder.GitFinderSync',
                       ]

  zap trash: [
               '~/Library/Application Scripts/ag.zigz.GitFinder*',
               '~/Library/Application Scripts/ag.zigz.GitFInder.GitFinderLauncher',
               '~/Library/Containers/ag.zigz.GitFinder*',
               '~/Library/Containers/ag.zigz.GitFInder.GitFinderLauncher',
               '~/Library/Group Containers/*.ag.zigz.GitFinder',
             ]
end
