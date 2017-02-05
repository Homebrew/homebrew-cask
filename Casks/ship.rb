cask 'ship' do
  version '2.0'
  sha256 '0422eef83b18e1f7e60f568b66750060857829b80d220e4ca9c96d50872f7649'

  url "https://www.realartists.com/builds/#{version}/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version}/sparkle.xml",
          checkpoint: 'add1ec24702d46c77f294866507b13c6bc105cc34968bb7150371a9e62a5c6a4'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap delete: [
                '~/Library/Preferences/com.realartists.Ship.plist',
                '~/Library/Application Support/Ship',
              ]
end
