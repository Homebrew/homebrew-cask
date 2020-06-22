cask 'paletro' do
  version '1.3.0'
  sha256 '28592b47b1e4f37d6d623e7e6a0452f4ef497b0b14e3f37bacdd2c16b7170af1'

  url "https://appmakes.io/paletro/download/Paletro-#{version}.dmg"
  appcast 'https://appmakes.io/paletro/update.xml'
  name 'Paletro'
  homepage 'https://appmakes.io/paletro'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'Paletro.app'

  zap trash: [
               '~/Library/Application Scripts/io.appmakes.PaletroLaunchHelper',
               '~/Library/Application Support/Paletro',
               '~/Library/Application Support/Paletro Preferences',
               '~/Library/Application Support/io.appmakes.Paletro',
               '~/Library/Containers/io.appmakes.PaletroLaunchHelper',
               '~/Library/Cookies/io.appmakes.Paletro.binarycookies',
               '~/Library/Group Containers/io.appmakes.Paletro.shared',
               '~/Library/Preferences/io.appmakes.Paletro.Preferences.plist',
               '~/Library/Preferences/io.appmakes.Paletro.plist',
             ]
end
