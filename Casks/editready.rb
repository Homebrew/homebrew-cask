cask 'editready' do
  version '1.4.2'
  sha256 'ed0f73788709bc68e28936f50a164727eafe7a56ce4f39ebcd8c8c784103f0ea'

  url "https://www.divergentmedia.com/filedownload/editready%20#{version}.dmg"
  name 'divergent media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap delete: [
                '~/Library/Application Support/EditReady',
                '~/Library/Preferences/com.divergentmedia.EditReady.plist',
              ]
end
