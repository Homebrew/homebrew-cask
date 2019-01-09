cask 'editready' do
  version '2.5.2'
  sha256 'd1d7ee821943f9faf1a09ed6e2477848e76f4a452a9759ef48e946cc6535572b'

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
