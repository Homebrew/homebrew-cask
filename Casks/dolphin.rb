cask :v1 => 'dolphin' do
  version '4.0-8052'
  sha256 'e5fd02dcf38a1b10f106dc765a73744349ea70cdb583ec1f589813617742d1a9'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'
  license :gpl

  app 'Dolphin.app'

  zap :delete => [
                  '~/Library/Application Support/Dolphin',
                  '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
                 ]
end
