cask 'blocs' do
  version '2.0.10'
  sha256 'fb88f31767b1a42e856105d7a839cff007b0bbcafd89b59439751cba39dded87'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: 'f8e2a3b5b82033d939c7903553bef0bb7e387a3358499d9039048a4cd332e40e'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
