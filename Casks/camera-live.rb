cask 'camera-live' do
  version '13'
  sha256 'c8a4ed731c3ff5f8ea494a5117ea12956c6fcbb0dcd45d9ab50a8ab41d6efdfa'

  url "https://github.com/v002/v002-Camera-Live/releases/download/#{version}/Camera.Live.zip"
  appcast 'https://github.com/v002/v002-Camera-Live/releases.atom'
  name 'Camera Live'
  homepage 'https://github.com/v002/v002-Camera-Live'

  app 'Camera Live.app'

  zap trash: [
               '~/Library/Preferences/info.v002.Camera-Live.plist',
               '~/Library/Saved Application State/info.v002.Camera-Live.savedState',
             ]
end
