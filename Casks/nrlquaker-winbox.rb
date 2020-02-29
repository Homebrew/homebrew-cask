cask 'nrlquaker-winbox' do
  version '3.21.1'
  sha256 'd6d2f6bbd42bd2b0e481b3874db94f45db5a99753bfa50465cc82b55f5036863'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox'
end
