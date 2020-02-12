cask 'middleclick' do
  version '2.4.7'
  sha256 '0e04b3a8b76549befd468a16f225f905c339df2ce8b59aee7ecbab249e5b3dbe'

  url "https://github.com/DaFuqtor/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  appcast 'https://github.com/DaFuqtor/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://github.com/DaFuqtor/MiddleClick'

  app 'MiddleClick.app'

  uninstall login_item: 'MiddleClick',
            quit:       'com.rouge41.middleClick'

  zap trash: '~/Library/Preferences/com.rouge41.middleClick.plist'
end
