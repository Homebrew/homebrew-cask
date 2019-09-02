cask 'gitfinder' do
  version '1.3.1'
  sha256 '801999749b72ed778ecf0688e48b42e6ddbe4c23739de2e00f10a83d6f34d344'

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
