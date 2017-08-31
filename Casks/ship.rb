cask 'ship' do
  version '2.6.3'
  sha256 '67588cdfedf1b94edbdf79ce45c07583ec2ad1c7bacb9bcbbf66cfe72827698e'

  url "https://www.realartists.com/builds/#{version.major}.0/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version.major}.0/sparkle.xml",
          checkpoint: '32810777a8715056dcd5250a250d324f0ab8edf92c4dcf989f22b27906354332'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap trash: [
               '~/Library/Preferences/com.realartists.Ship.plist',
               '~/Library/Application Support/Ship',
             ]
end
