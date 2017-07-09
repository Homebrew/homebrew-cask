cask 'now' do
  version '2.1.0'
  sha256 'fc696b9cdf3d323784099e6602e0478cf5bb9a52735f8c954802d8fd7e9b6cbe'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: 'd6c7ce14b96a2b05d1051299bdd9b40f6492276dd4a4dc7e1a6de5b6948943e8'
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
