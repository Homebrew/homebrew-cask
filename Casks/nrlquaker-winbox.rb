cask 'nrlquaker-winbox' do
  version '3.22.0'
  sha256 '795fd5a49300da638411f3eb5c8e7aa33735865d8b534c7550ea29631c7b9d0b'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox'
end
