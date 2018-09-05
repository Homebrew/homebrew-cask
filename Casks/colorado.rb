cask 'colorado' do
  version :latest
  sha256 :no_check

  url 'http://www.moesaid.com/colorado/app/colorado-mac-x64.zip'
  name 'Colorado'
  homepage 'http://www.moesaid.com/colorado/'

  app 'colorado-mac/colorado.app'

  zap trash: [
               '~/Library/Application Support/colorado',
               '~/Library/Preferences/com.electron.colorado.helper.plist',
               '~/Library/Preferences/com.electron.colorado.plist',
               '~/Library/Saved Application State/com.electron.colorado.savedState',
             ]
end
