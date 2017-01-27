cask 'ship' do
  version '2.0'
  sha256 '4cf4c0f7f369a1958a8e486b05fdd49dd575ad8f8a2ffc1be3b36d20e9c4b9a9'

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
