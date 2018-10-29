cask 'gobdokumente' do
  version '1.3.2'
  sha256 'ae6301efc987930df3e874e2cc9980868d8d1f314c1755005a887dc3ca9e5324'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/GoBDokumente.zip'
  appcast 'https://sparkle.moapp.software/gobdokumente.xml'
  name 'GoBDokumente'
  name 'GoBDocuments'
  homepage 'https://gobdokumente.de/'

  depends_on macos: '>= :el_capitan'

  app 'GoBDokumente.app'

  zap trash: [
               '~/Library/Preferences/com.moapp.GoBDokumente.plist',
               '~/Library/Caches/com.moapp.GoBDokumente',
             ]
end
