cask 'nrlquaker-winbox' do
  version '3.19'
  sha256 '6e9f4de26aa41fb39efa57597db202c64c3fd5754e6b53509084922e4b4f88f7'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end
