cask 'gitfinder' do
  version '1.0.2'
  sha256 '570a354de436a27289930eac5c065b7b0c242f16f19f343c6e86431989e56f7e'

  # zigz.ag/GitFinder was verified as official when first introduced to the cask
  url 'https://zigz.ag/GitFinder/updates/GitFinder.dmg'
  appcast 'https://zigz.ag/GitFinder/updates/stablecast.xml'
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
