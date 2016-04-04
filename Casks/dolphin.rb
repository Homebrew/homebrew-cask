cask 'dolphin' do
  version '4.0-9187'
  sha256 '23a275eeed110a8ce7c7a64040168cbfdef9b799316699de6aa8ee90b4e03705'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'
  license :gpl

  app 'Dolphin.app'

  zap delete: [
                '~/Library/Application Support/Dolphin',
                '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
              ]
end
