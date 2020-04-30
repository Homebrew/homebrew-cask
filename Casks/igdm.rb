cask 'igdm' do
  version '3.0.0'
  sha256 'f33d07228be63d68bc532a6bb1aab74e452a1a079356c0fcc1b04a49f8f7652e'

  # github.com/ifedapoolarewaju/igdm/ was verified as official when first introduced to the cask
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
