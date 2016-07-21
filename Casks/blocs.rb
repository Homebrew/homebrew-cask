cask 'blocs' do
  version '2.1.1'
  sha256 '2ad3558f020144eddbd0b7df532eaa71ea54318a4c4b3e6bf5747091c8824a5b'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: '91f7f658121e3c25a18a89570bc7595b67ed7389e8ecebf1f523f6b0e9f560c5'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
