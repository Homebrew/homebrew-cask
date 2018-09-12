cask 'editready' do
  version '2.1.6'
  sha256 'f3b16ff2519d9bb789835a7eaab532c7c11cec9bc5d4afcd412db6a9e20e9876'

  url "https://www.divergentmedia.com/fileRepository/EditReady%20#{version}.dmg"
  name 'Divergent Media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap trash: [
               '~/Library/Application Support/EditReady',
               '~/Library/Preferences/com.divergentmedia.EditReady.plist',
             ]
end
