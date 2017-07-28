cask 'ship' do
  version '2.5.4'
  sha256 '2217af411a6d146e1f67bce5e05d7c310089ef7b7d3c3bb4fb1217e1cf98197a'

  url "https://www.realartists.com/builds/#{version.major}.0/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version.major}.0/sparkle.xml",
          checkpoint: '8385ead1633dbbd7e10234c3e1c9efea78827d2d4d516b8868b08bdf6ab84fbf'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap trash: [
               '~/Library/Preferences/com.realartists.Ship.plist',
               '~/Library/Application Support/Ship',
             ]
end
