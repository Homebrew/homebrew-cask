cask 'ship' do
  version '2.6.1'
  sha256 '69ed0b391662f585cb94e7364288a82896b8a147be6aeb4ea38bb2943b666cfb'

  url "https://www.realartists.com/builds/#{version.major}.0/Ship.app.zip"
  appcast "https://www.realartists.com/builds/#{version.major}.0/sparkle.xml",
          checkpoint: 'ff13d107d4a23501b61b9395bef03006b54f40aa5319fd50b0f73fca54b61348'
  name 'Ship'
  homepage 'https://www.realartists.com/'

  app 'Ship.app'

  zap trash: [
               '~/Library/Preferences/com.realartists.Ship.plist',
               '~/Library/Application Support/Ship',
             ]
end
