cask 'igdm' do
  version '2.6.5'
  sha256 'c8960c0b3232a4e6cae021195c8f0b9e9cc9cfb364127f2d078a6229eaacc6f4'

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
