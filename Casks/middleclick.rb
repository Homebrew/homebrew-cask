cask 'middleclick' do
  version '2.4.5'
  sha256 '0cf66ff60029b449155ccc008cf64fe3ba3abadfa37035c416bdb58e31ea1d0c'

  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast 'https://github.com/DaFuqtor/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/DaFuqtor/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick'

  zap trash: '~/Library/Preferences/com.rouge41.middleClick.plist'
end
