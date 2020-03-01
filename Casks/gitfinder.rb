cask 'gitfinder' do
  version '1.4.1'
  sha256 'a37121eb80a45156e5d2dbb3fc6a889f91bb3ce6e900288c55e22baf8ea045e7'

  # zigz.ag/GitFinder was verified as official when first introduced to the cask
  url 'https://zigz.ag/GitFinder/updates/GitFinder.dmg'
  appcast 'https://zigz.ag/GitFinder/updates/stablecast.xml'
  name 'GitFinder'
  homepage 'https://gitfinder.com/'

  app 'GitFinder.app'

  uninstall launchctl: 'ag.zigz.GitFinder.GitFinderLauncher',
            quit:      [
                         'ag.zigz.GitFinder',
                         'ag.zigz.GitFinder.GitFinderSync',
                       ]

  zap trash: [
               '~/Library/Application Scripts/ag.zigz.GitFinder*',
               '~/Library/Containers/ag.zigz.GitFinder*',
               '~/Library/Group Containers/*.ag.zigz.GitFinder',
             ]
end
