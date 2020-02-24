cask 'gitfinder' do
  version '1.4'
  sha256 '07ed6919d825283619ca24959fe620f7786f2ba5a6d32a34e9f6f9f5ad33a958'

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
