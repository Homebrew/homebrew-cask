cask 'nrlquaker-winbox' do
  version '3.20'
  sha256 '601b859934ba623dcdce3d1b583a82e45928656ede4dff1c0b6f67cf53ec0047'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  depends_on formula: 'freetype',
    cask: 'xquartz'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end
