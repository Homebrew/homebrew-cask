cask 'gobdokumente' do
  version '1.3.1'
  sha256 '6bafc9d954e944d4b057d81a6be17c5a06cab0438593663b6d31af9876b0ad98'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/GoBDokumente.zip'
  appcast 'https://sparkle.moapp.software/gobdokumente.xml'
  name 'GoBDokumente'
  name 'GoBDocuments'
  homepage 'https://gobdokumente.de/'

  depends_on macos: '>= 10.11'

  app 'GoBDokumente.app'

  zap trash: [
               '~/Library/Preferences/com.moapp.GoBDokumente.plist',
               '~/Library/Caches/com.moapp.GoBDokumente',
             ]
end
