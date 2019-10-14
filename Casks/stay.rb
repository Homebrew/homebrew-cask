cask 'stay' do
  version '1.2.8'
  sha256 '754b02b07af6da1383f59751448cab76d18b1ffc9c7dca8047f7fccc37650076'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.dmg"
  appcast 'https://cordlessdog.com/stay/appcast.xml'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'

  depends_on macos: '>= :high_sierra'

  app 'Stay.app'

  zap trash: [
               '~/Library/Application Support/Stay',
               '~/Library/Application Support/com.cordlessdog.Stay',
               '~/Library/Preferences/com.cordlessdog.Stay.plist',
             ]
end
