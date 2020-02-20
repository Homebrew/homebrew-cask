cask 'middleclick' do
  version '2.4.8'
  sha256 '764b74654129267b40fb7ff1c733b6acf3b61613b90bbf4bb63e0cfef60e0700'

  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast 'https://github.com/DaFuqtor/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/DaFuqtor/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick'

  zap trash: '~/Library/Preferences/com.rouge41.middleClick.plist'
end
