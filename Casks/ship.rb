cask 'ship' do
  version '2.0'
  sha256 '13be3718111f8deaf2fa65bac1a93315e48516b7a8e06b840c867e25e528b527'

  url "https://www.realartists.com/builds/#{version}/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version}/sparkle.xml",
          checkpoint: '0e91a5f2eebbcafa921bc98cbacddefebcd8ffcc6763691089381aec47e3b2a9'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap delete: [
                '~/Library/Preferences/com.realartists.Ship.plist',
                '~/Library/Application Support/Ship',
              ]
end
