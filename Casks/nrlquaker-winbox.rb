cask 'nrlquaker-winbox' do
  version '3.20.2'
  sha256 '638ee2448c6462b5c38b327f6cd2fbdecee7dfaf929d9406ff3980df5469c7fa'

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
