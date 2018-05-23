cask 'dolphin' do
  version '5.0'
  sha256 '1e7127cf9b110c5d7feabc0d05f620bad31d0f47a1d16e1f46e2e402d0ec233c'

  url "https://dl-mirror.dolphin-emu.org/#{version}/dolphin-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom',
          checkpoint: 'c2e88f5174e911f4af1922d58ddb533154428d83333699a256c7aac0c1eb91d1'
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'

  app 'Dolphin.app'

  zap trash: [
               '~/Library/Application Support/Dolphin',
               '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
             ]
end
