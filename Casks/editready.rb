cask 'editready' do
  version '1.4.9'
  sha256 '0f31c19aa90e338964d0349ed247bc92ccc411883abdf988e614d4c6ee7fc389'

  url "https://www.divergentmedia.com/filedownload/editready%20#{version}.dmg"
  name 'divergent media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap delete: [
                '~/Library/Application Support/EditReady',
                '~/Library/Preferences/com.divergentmedia.EditReady.plist',
              ]
end
