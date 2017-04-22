cask 'dolphin' do
  version '5.0'
  sha256 '1e7127cf9b110c5d7feabc0d05f620bad31d0f47a1d16e1f46e2e402d0ec233c'

  url "https://dl-mirror.dolphin-emu.org/#{version}/dolphin-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom',
          checkpoint: '89923290b966c1ec59b23ff257a2ee6195a9dfbeee0434069cbe2e85afda847e'
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'

  app 'Dolphin.app'

  zap delete: [
                '~/Library/Application Support/Dolphin',
                '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
              ]
end
