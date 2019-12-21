cask 'nrlquaker-winbox' do
  version '3.20.4'
  sha256 '1aa393ba9bb4db65866305f2e99116956e1b19acf0ea597357978c7c3b9f6d6a'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  depends_on formula: 'freetype',
             cask:    'xquartz'

  app 'Winbox-mac.app'
  binary "#{appdir}/Winbox-mac.app/Contents/MacOS/winbox-mac-addresses"

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end
