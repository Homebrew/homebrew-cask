cask 'igdm' do
  version '2.7.0'
  sha256 '11e740cfd6760e1389156eb5c57dd91f08adaccdbf592cda75a844a0d59df1ab'

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
