cask 'gobdokumente' do
  version '1.6'
  sha256 'c271b090affa0d002c96704c1303253210d534230ed256521b352d4b7119ffe2'

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
