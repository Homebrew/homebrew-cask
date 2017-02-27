cask 'ship' do
  version '2.0'
  sha256 :no_check

  url "https://www.realartists.com/builds/#{version}/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version}/sparkle.xml",
          checkpoint: '219ba2f439c96f4a6fe6ad0c67cd090c8e19bc359250a84e96835948d1f3d1fa'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap delete: [
                '~/Library/Preferences/com.realartists.Ship.plist',
                '~/Library/Application Support/Ship',
              ]
end
