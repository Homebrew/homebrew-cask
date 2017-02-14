cask 'ship' do
  version '2.0'
  sha256 '0422eef83b18e1f7e60f568b66750060857829b80d220e4ca9c96d50872f7649'

  url "https://www.realartists.com/builds/#{version}/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version}/sparkle.xml",
          checkpoint: 'dd8ffc08a7a2d0b1d5dc24ffdfbdd6820a8f827897e7f18cb1170267fa4fbe7a'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap delete: [
                '~/Library/Preferences/com.realartists.Ship.plist',
                '~/Library/Application Support/Ship',
              ]
end
