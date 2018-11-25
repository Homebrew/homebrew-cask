cask 'now' do
  version '4.0.10'
  sha256 '41ea05a9072b0c923f51bffe03c52c6249630a36baab0d3101e450d628ffe524'

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
