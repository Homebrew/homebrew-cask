cask 'lyn' do
  version '1.10'
  sha256 '25bacda3d4d6c23775ce259cf9237ccf017ef3fbbd8e35277c2344f8d23e5a06'

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'https://www.lynapp.com/lyn/update.xml'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap trash: [
               '~/Library/Application Support/Lyn',
               '~/Library/Caches/com.lynapp.lyn',
               '~/Library/Preferences/com.lynapp.lyn.plist',
             ]
end
