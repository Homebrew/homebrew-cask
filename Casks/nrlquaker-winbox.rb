cask 'nrlquaker-winbox' do
  version '3.23.0'
  sha256 'e35d95c2559a2246f39092096b74cfa519b03026ef9b33f1fc18df0c7135405c'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox'
end
