cask 'igdm' do
  version '2.8.1'
  sha256 '252ea2e15861484fd086be49d22fd104b96764dcc4f244cfcce520ecfd281543'

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
