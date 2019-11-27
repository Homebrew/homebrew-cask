cask 'nrlquaker-winbox' do
  version '3.20.3'
  sha256 '0f3a0afd3eecac435642543770388bdf9cd9fc3d12d982892221e7f92ffc9f1a'

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
