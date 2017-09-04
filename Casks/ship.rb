cask 'ship' do
  version :latest
  sha256 :no_check

  url 'https://www.realartists.com/builds/2.0/Ship.app.zip'
  appcast 'https://www.realartists.com/builds/2.0/sparkle.xml',
          checkpoint: '22b8b7320532a014ac88154ecf0e04583d063af9aa4bb936816a3621178c0865'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  auto_updates true

  app 'Ship.app'

  zap delete: [
                '~/Library/Application Support/com.realartists.Ship2',
                '~/Library/Preferences/com.realartists.Ship2.plist',
                '~/Library/RealArtists/Ship2',
              ]
end
