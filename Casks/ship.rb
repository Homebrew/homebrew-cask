cask 'ship' do
  version :latest
  sha256 :no_check

  url 'https://www.realartists.com/Ship.app.zip'
  name 'Ship'
  homepage 'https://www.realartists.com'

  app 'Ship.app'

  zap delete: [
                '~/Library/Preferences/com.realartists.Ship.plist',
                '~/Library/Application Support/Ship',
              ]
end
