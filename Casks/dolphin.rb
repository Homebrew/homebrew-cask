cask :v1 => 'dolphin' do
  version '4.0-7010'
  sha256 'b23dde678572ddc3d7f91631b105ac08df64f1dbfcade9cf37c21937755e9fa9'

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
