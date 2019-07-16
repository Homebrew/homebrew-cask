cask 'gitfinder' do
  version '1.2'
  sha256 'b4259efc5f7bcbde74a7ca39e6e0b4358af8cf787ca7e5b40d79e2e4e6d32c8c'

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
