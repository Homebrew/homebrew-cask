cask 'now' do
  version '3.8.17'
  sha256 '5d046ae898c0cfc91c3cbd95047831440e0c63b4c32ecf2bc5acda66c68910f0'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: 'ba5c5746be42c44f2058ff9039e518bdad34d1fae5fa790292bf0d977ca53fa9'
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
