cask 'igdm' do
  version '2.8.0'
  sha256 '5d9c842c900def2d85e7cf2e27cbf28e1c80475f4df37b2fd0b4928ce0a8673d'

  # github.com/ifedapoolarewaju/igdm was verified as official when first introduced to the cask
  url "https://github.com/ifedapoolarewaju/igdm/releases/download/v#{version}/IGdm-#{version}.dmg"
  appcast 'https://github.com/ifedapoolarewaju/igdm/releases.atom'
  name 'IG:dm'
  homepage 'https://igdm.me/'

  app 'IGdm.app'

  uninstall quit: 'com.ifedapoolarewaju.desktop.igdm'

  zap trash: [
               '~/Library/Application Support/IGdm',
               '~/Library/Logs/IGdm',
               '~/Library/Preferences/com.ifedapoolarewaju.desktop.igdm.helper.plist',
               '~/Library/Preferences/com.ifedapoolarewaju.desktop.igdm.plist',
               '~/Library/Saved Application State/com.ifedapoolarewaju.desktop.igdm.savedState',
             ]
end
