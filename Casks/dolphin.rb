cask 'dolphin' do
  version '5.0'
  sha256 '1e7127cf9b110c5d7feabc0d05f620bad31d0f47a1d16e1f46e2e402d0ec233c'

  url "https://dl-mirror.dolphin-emu.org/#{version}/dolphin-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom',
          checkpoint: '6ab4f4b3cee67f86682a5bb8208f5b0b4cd57d0d89c9264f607f09a764914216'
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'

  app 'Dolphin.app'

  zap delete: [
                '~/Library/Application Support/Dolphin',
                '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
              ]
end
