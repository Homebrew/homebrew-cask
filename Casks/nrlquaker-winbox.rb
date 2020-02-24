cask 'nrlquaker-winbox' do
  version '3.21.0'
  sha256 '0fe8415b7c774a644f2579e86a7c292071fa963cff8710665c18e5b83921ebc4'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox'
end
