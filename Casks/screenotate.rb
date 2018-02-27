cask 'screenotate' do
  version '2.1.0'
  sha256 '51a434ad6ee8f64da23f48dcab19c8709008ac6b8f95f18fb90a8c1756d27e2e'

  url 'https://screenotate.com/download/Screenotate-latest.dmg'
  appcast 'https://screenotate.com/download/appcast.xml',
          checkpoint: '756cf1fee8e6efd5d9ec2a496143d3ef4021c6bc3931662c9fc40b54023b627e'
  name 'Screenotate'
  homepage 'https://screenotate.com/'

  app 'Screenotate.app'

  uninstall login_item: 'Screenotate',
            quit:       'com.rsnous.Screenotate'

  zap trash: [
               '~/Library/Application Support/Screenotate',
               '~/Library/Caches/com.rsnous.Screenotate',
               '~/Library/Cookies/com.rsnous.Screenotate.binarycookies',
               '~/Library/Preferences/com.rsnous.Screenotate.plist',
             ]
end
