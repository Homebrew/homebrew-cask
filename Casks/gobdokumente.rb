cask 'gobdokumente' do
  version '1.2'
  sha256 '7afdd5c9d7c5efdd69d9342ce2f816258e23edd0a5341cebc7e1f137d211150d'

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
