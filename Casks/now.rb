cask 'now' do
  version '3.8.7'
  sha256 '27f5725017bef9db61c40d0efbbe36821f285955b5e82d657ba20122e6120692'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: '0f8c2e3dd96b4345fd0f815457eabe6826d0d191e317d1185799b8b3a201f99c'
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
