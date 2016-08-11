cask 'spacemonkey' do
  version '0.7.17'
  sha256 '276c29a536e0a21539831dfbb6dd81f10dbd09a0e17bffeb11cd253c1dc78e57'

  url 'http://downloads.spacemonkey.com/client/mac/latest'
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          checkpoint: 'cfdb1a65ee5826ac97cb25af5d3cf55fa1af43c95ae3490f2737cd7063c3819d'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'SpaceMonkey.app'
end
