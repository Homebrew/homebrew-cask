cask 'linear-linear' do
  version '1.2.7'
  sha256 '9a8cdcd944f606a630d98fc55a7152f73c63707a45d223e7c26cb8fd8b4574a0'

  url "https://download.linear.app/darwin/Linear-darwin-x64-#{version}.zip"
  appcast 'https://api.linear.app/update/darwin/0.0.0'
  name 'Linear'
  homepage 'https://linear.app/'

  app 'Linear.app'

  zap trash: [
               '~/Library/Application Support/Linear',
               '~/Library/Caches/com.linear',
               '~/Library/Caches/com.linear.ShipIt',
               '~/Library/Preferences/com.linear.plist',
               '~/Library/Saved Application State/com.linear.savedState',
             ]
end
