cask :v1 => 'dolphin' do
  version '4.0-5416'
  sha256 '7d7ddb2bbd2e3255079fee707fe0723b5c5679cf9f21b70dc83feeeb10aa4b4b'

  url "http://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'
  license :gpl

  app 'Dolphin.app'

  zap :delete => [
                  '~/Library/Application Support/Dolphin',
                  '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
                 ]
end
