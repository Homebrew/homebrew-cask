cask 'now' do
  version '4.0.16'
  sha256 'cabf8faf7493f8a0711ceee1cf0b528b9893ef57db0d5d25fc38a2b4ca503eaa'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/Now-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom'
  name 'Now'
  homepage 'https://zeit.co/now'

  app 'Now.app'

  uninstall delete:     '/usr/local/bin/now',
            login_item: 'Now',
            signal:     ['TERM', 'co.zeit.now']

  zap trash: [
               '~/.now.json',
               '~/Library/Application Support/Now',
               '~/Library/Caches/co.zeit.now',
               '~/Library/Caches/co.zeit.now.ShipIt',
               '~/Library/Preferences/co.zeit.now.plist',
               '~/Library/Preferences/co.zeit.now.helper.plist',
             ]
end
