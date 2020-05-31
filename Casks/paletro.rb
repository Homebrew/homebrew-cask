cask 'paletro' do
  version '1.1.0'
  sha256 '8e36dfa44c9c68674cac45880a812192fc69400e018dded201c53e0593f9fffe'
  
  url "https://appmakes.io/paletro/download/Paletro-#{version}.dmg"
  appcast 'https://appmakes.io/paletro/update.xml'
  name 'Paletro'
  homepage 'https://appmakes.io/paletro'

  auto_updates true

  app 'Paletro.app'

  zap trash: [
               '~/Library/Application Scripts/io.appmakes.PaletroLaunchHelper/',
               '~/Library/Application Support/Paletro',
               '~/Library/Application Support/Paletro Preferences',
               '~/Library/Application Support/io.appmakes.Paletro',
               '~/Library/Containers/io.appmakes.PaletroLaunchHelper/',
               '~/Library/Group Containers/io.appmakes.Paletro.shared/',
               '~/Library/Preferences/io.appmakes.Paletro.Preferences.plist',
               '~/Library/Preferences/io.appmakes.Paletro.plist',
             ]
end
