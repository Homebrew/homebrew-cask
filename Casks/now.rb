cask 'now' do
  version '2.3.3'
  sha256 '3a38eea43eacabe85e4c7b85092071cd4c0ce837c1f3390e317f676326295c4d'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: '300f1e4d4357c0ec845cd450df67b3b6257cde3f78ce68af13e391f2a2c02eb9'
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
