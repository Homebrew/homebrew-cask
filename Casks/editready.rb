cask 'editready' do
  version '2.0.1'
  sha256 'd6e5176ecbd01806ea67d975c9847d05e11c993ee98dab04d516304f38361dff'

  url "https://www.divergentmedia.com/filedownload/editready%20#{version}.dmg"
  name 'divergent media EditReady'
  homepage 'https://www.divergentmedia.com/editready'

  app 'EditReady.app'

  zap delete: [
                '~/Library/Application Support/EditReady',
                '~/Library/Preferences/com.divergentmedia.EditReady.plist',
              ]
end
