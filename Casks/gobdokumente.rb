cask 'gobdokumente' do
  version '1.4.3'
  sha256 'b197410701fffbd0b6af33c44114d8d0344fa0a6026f4a16c612dcb00753c90b'

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
