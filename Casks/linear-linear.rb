cask 'linear-linear' do
  version '1.2.5'
  sha256 '825611a1d80b3721c71e912d10015b1a1e44b59f40767616f7a0bba77c7de7ce'

  url "https://download.linear.app/darwin/Linear-darwin-x64-#{version}.zip"
  appcast 'https://api.linear.app/update/darwin/1.0.0'
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
