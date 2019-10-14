cask 'gitfinder' do
  version '1.3.2'
  sha256 'baca4042327c4c2ac4adac3ccbc000fdc11b7e17a1158925fcd5e12f6c28963c'

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
