cask 'publii' do
  version '0.36.1'
  sha256 '53f6f09833069274aec7b8233e5babb2d9feec7b5a7ea2de80be593f668878a7'

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
