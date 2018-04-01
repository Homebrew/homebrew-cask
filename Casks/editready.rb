cask 'editready' do
  version '2.1.1'
  sha256 '95ae7db03343920df21dc4617b926ab341ff9a487e02f70dea2e088b8233322c'

  url "https://www.divergentmedia.com/filedownload/editready%20#{version}.dmg"
  name 'divergent media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap trash: [
               '~/Library/Application Support/EditReady',
               '~/Library/Preferences/com.divergentmedia.EditReady.plist',
             ]
end
