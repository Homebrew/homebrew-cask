cask 'editready' do
  version '2.5'
  sha256 '1ad43c6a58ded6e18daccbd1af364fce22f6e1e4468dcd303d57a509f0955459'

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
