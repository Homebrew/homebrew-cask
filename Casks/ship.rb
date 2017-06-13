cask 'ship' do
  version '2.0.2'
  sha256 '98d5f145fef0ca9f8562933fabd496d36452047021979d582af7f558c610e198'

  url "https://www.realartists.com/builds/#{version.major_minor}/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version.major_minor}/sparkle.xml",
          checkpoint: '6289e888d8bf4cd8ace1798d95b0d0105616949d4c2188c0b6ae44ba6558bd39'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap delete: [
                '~/Library/Preferences/com.realartists.Ship.plist',
                '~/Library/Application Support/Ship',
              ]
end
