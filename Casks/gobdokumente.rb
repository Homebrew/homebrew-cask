cask 'gobdokumente' do
  version '1.3'
  sha256 '1a40b3cfcd9ed1124b40ee62b3bf516494f9941fd14a01c1ddfe71c327c45292'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/GoBDokumente.zip'
  appcast 'https://sparkle.moapp.software/gobdokumente.xml'
  name 'GoBDokumente'
  homepage 'https://gobdokumente.de/'

  app 'GoBDokumente.app'

  zap trash: [
               '~/Library/Preferences/com.moapp.GoBDokumente.plist',
               '~/Library/Caches/com.moapp.GoBDokumente',
             ]
end
