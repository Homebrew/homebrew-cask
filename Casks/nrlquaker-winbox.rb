cask 'nrlquaker-winbox' do
  version '3.24.1'
  sha256 '7ff43318e329f8439e0b7f0d21fae2e1d9b447f32bcef5a5e4284a77f32912c1'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox'
end
