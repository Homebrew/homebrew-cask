cask 'editready' do
  version '1.4.6'
  sha256 '1e4a7fd9590ba61046b99ca636252f904148e5249daab99b786126e9c2003f6b'

  url "https://www.divergentmedia.com/filedownload/editready%20#{version}.dmg"
  name 'divergent media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap delete: [
                '~/Library/Application Support/EditReady',
                '~/Library/Preferences/com.divergentmedia.EditReady.plist',
              ]
end
