cask 'nrlquaker-winbox' do
  version '3.20.1'
  sha256 '8165ecb85a126fb5c85dcad4ef7eeedd223f89c8b27c22e9cd9ce6a68bf5e5b2'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  depends_on formula: 'freetype',
             cask:    'xquartz'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end
