cask 'stay' do
  version '1.2.7'
  sha256 '332d7046630e0ed9367e635081f1eaadbecfb52e655448edc7f173d3c72c1ce5'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.dmg"
  appcast 'https://cordlessdog.com/stay/appcast.xml'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'

  app 'Stay.app'

  zap trash: [
               '~/Library/Application Support/Stay',
               '~/Library/Application Support/com.cordlessdog.Stay',
               '~/Library/Preferences/com.cordlessdog.Stay.plist',
             ]
end
