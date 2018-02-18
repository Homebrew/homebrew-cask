cask 'gitfinder' do
  version '1.0'
  sha256 'ddbc1410e24be56ef10c1deceeb8af07bb7156e10704a5bae3e8fa2806cef585'

  # zigz.ag/GitFinder was verified as official when first introduced to the cask
  url 'https://zigz.ag/GitFinder/updates/GitFinder.dmg'
  appcast 'https://zigz.ag/GitFinder/updates/stablecast.xml',
          checkpoint: 'a53bc8279d1b10e0c76d00d3c0bd29c606f1054c88e9900bd54621c0c1508929'
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
