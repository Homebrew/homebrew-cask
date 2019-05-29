cask 'editready' do
  version '2.5.4'
  sha256 '8c71b33500856fd15bd6ef0cf175f63467dab692332f1ec8578f702bcb8ec8d6'

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
