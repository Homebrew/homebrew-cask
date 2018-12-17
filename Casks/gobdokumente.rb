cask 'gobdokumente' do
  version '1.4.2'
  sha256 'aa1a54596c074e2c0dca4f643cd36563fdcbb47265b334a05d6917edd70b396f'

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
