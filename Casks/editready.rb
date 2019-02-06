cask 'editready' do
  version '2.5.3'
  sha256 '068bebdb5700aa8aaec09da43b985678ee3ec450282b81d145ff8b70cba54914'

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
