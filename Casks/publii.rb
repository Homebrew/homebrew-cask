cask 'publii' do
  version '0.36.0'
  sha256 '4765d425ddf94c11ef73176a13a162453bbb74c23180277642209fe8c62c2e58'

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  appcast 'https://getpublii.com/download/'
  name 'Publii'
  homepage 'https://getpublii.com/'

  app 'Publii.app'

  zap trash: [
               '~/Documents/Publii',
               '~/Library/Application Support/Publii',
               '~/Library/Logs/Publii',
               '~/Library/Preferences/com.tidycustoms.publii.plist',
             ]
end
