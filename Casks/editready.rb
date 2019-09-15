cask 'editready' do
  version '2.6.2'
  sha256 'fb1a25bcb2f94b37c8de566a5791f4070998cdde5b18df6d5b14c241f0d45d72'

  url "https://www.divergentmedia.com/fileRepository/EditReady%20#{version}.dmg"
  appcast 'https://www.divergentmedia.com/autoupdater/editready/2_x'
  name 'Divergent Media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap trash: [
               '~/Library/Application Support/EditReady',
               '~/Library/Preferences/com.divergentmedia.EditReady.plist',
             ]
end
