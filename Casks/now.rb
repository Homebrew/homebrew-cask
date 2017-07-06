cask 'now' do
  version '2.0.2'
  sha256 '565280be47de3674fa8f3af9d2d3c4d8c7492f5a1a382d908be201df9b0ce7de'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: 'c040b6350861b93276316c1c87739bb84afbb04dad4c5e437f57ab8b420172df'
  name 'Now'
  homepage 'https://zeit.co/now'

  app 'Now.app'

  zap delete: [
                '~/Library/Application Support/Now',
                '~/Library/Caches/co.zeit.now',
                '~/Library/Caches/co.zeit.now.ShipIt',
              ],
      trash:  [
                '~/.now.json',
                '~/Library/Preferences/co.zeit.now.plist',
                '~/Library/Preferences/co.zeit.now.helper.plist',
                '/usr/local/bin/now',
              ]
end
