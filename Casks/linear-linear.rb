cask 'linear-linear' do
  version '1.2.6'
  sha256 '7eb241720d3112189afb5a1e68fc79978d14d18ef9574dd508667f3337049394'

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
