cask 'gitfinder' do
  version '1.1.2'
  sha256 'bf2ae913ade2d929ac1a856407f3174b5e62cb7f78df607e461075aba6b2a42f'

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
