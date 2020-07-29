cask 'linear-linear' do
  version '1.2.8'
  sha256 'bf4cfa1c578eb3264138e41f35f6f7d1ceeeb821c4e406d4fa2bef148428c1de'

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
