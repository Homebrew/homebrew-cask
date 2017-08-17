cask 'now' do
  version '2.3.4'
  sha256 'fef5d9201cfc0b03413d9fcb1aaca89f1509ab4e209009ec2701445b39ccd17f'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: '91eb08bd7b1e38c000573cd20e81e84f4e7b3279f140d456e3dcaa62e6ecbb31'
  name 'Now'
  homepage 'https://zeit.co/now'

  app 'Now.app'

  uninstall delete:     '/usr/local/bin/now',
            login_item: 'Now',
            signal:     ['TERM', 'co.zeit.now']

  zap delete: [
                '~/Library/Caches/co.zeit.now',
                '~/Library/Caches/co.zeit.now.ShipIt',
              ],
      trash:  [
                '~/.now.json',
                '~/Library/Application Support/Now',
                '~/Library/Preferences/co.zeit.now.plist',
                '~/Library/Preferences/co.zeit.now.helper.plist',
              ]
end
