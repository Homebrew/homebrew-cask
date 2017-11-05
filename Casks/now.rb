cask 'now' do
  version '3.3.2'
  sha256 '0f6d65207b7d8a0c15aea30ef101cf7b15d81fe6da106f6f1e8b158faa8ae727'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: 'ab9a71aa5b243b85afc80f8985d3d691ddce7d96c5e7c05e09e5ca2bd1d34275'
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
