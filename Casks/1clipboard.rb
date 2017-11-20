cask '1clipboard' do
  version '0.1.8'
  sha256 'd1dee1594fa8b16a54bbcaf2d88b07e3bade0bb809416e535621ddb63b9e2b3d'

  url "http://1clipboard.io/download/darwin/#{version}/1Clipboard.zip"
  appcast 'http://1clipboard.io/download/darwin/',
          checkpoint: '391698b82a53cc527c9616be048d56b6547b7df947b1588e24692e934280fdf7'
  name '1Clipboard'
  homepage 'http://1clipboard.io/'

  depends_on macos: '>= :mountain_lion'

  app '1Clipboard.app'

  uninstall login_item: '1Clipboard',
            quit:       [
                          'com.ngwin.1clipboard',
                          'com.ngwin.1clipboardhelper',
                        ]

  zap trash: [
               '~/Library/Application Support/1Clipboard',
               '~/Library/Application Support/com.ngwin.1clipboard.ShipIt',
               '~/Library/Caches/1Clipboard',
               '~/Library/Caches/com.ngwin.1clipboard',
               '~/Library/Preferences/com.ngwin.1clipboard.plist',
               '~/Library/Saved Application State/com.ngwin.1clipboard.savedState',
             ]
end
