cask 'editready' do
  version '2.1.5'
  sha256 '64c3658955fdad476576fd1f6faf31292ed725ec5364bc5e23026ec1ad55432d'

  url "https://www.divergentmedia.com/filedownload/editready%20#{version}.dmg"
  name 'divergent media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap trash: [
               '~/Library/Application Support/EditReady',
               '~/Library/Preferences/com.divergentmedia.EditReady.plist',
             ]
end
