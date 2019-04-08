cask 'pdf-squeezer' do
  version '3.10.2'
  sha256 '8366ba407b64475015da142f1380706ba6ad50dba64d4ef72e72e885e91342b6'

  url 'https://witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg'
  appcast 'https://witt-software.com/downloads/pdfsqueezer/appcast.xml'
  name 'PDF Squeezer'
  homepage 'https://witt-software.com/pdfsqueezer/'

  app 'PDF Squeezer.app'
end
