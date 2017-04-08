cask 'shortcat' do
  version '0.7.7'
  sha256 '272b7d2c4f2025e693d3ebfd8c3276e992676196040d1b79dc26ac91cee22edf'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml',
          checkpoint: '708f387b4618c28c21a68722ee5ecaefbcbe82b9bb898ffdb74a7c1e0f6157a3'
  name 'Sproutcube Shortcat'
  homepage 'https://shortcatapp.com/'

  accessibility_access true

  app 'Shortcat.app'

  zap delete: [
                '~/Library/Application Support/Shortcat',
                '~/Library/Cookies/com.sproutcube.Shortcat.binarycookies',
                '~/Library/Preferences/com.sproutcube.Shortcat.plist',
              ]
end
