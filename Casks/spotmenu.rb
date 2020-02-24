cask 'spotmenu' do
  version '1.9'
  sha256 '306fc07e2fa2987bd46eae15012808ab2341e47bc56c7b0ebef151752155fd6f'

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.zip"
  appcast 'https://github.com/kmikiy/SpotMenu/releases.atom'
  name 'SpotMenu'
  homepage 'https://github.com/kmikiy/SpotMenu'

  auto_updates true

  app 'SpotMenu.app'
end
