cask 'blocs' do
  version '2.1.2'
  sha256 '2ecbe717b337e908098c23cb3d9856a3d7442c09343d9121bc864c2d50784eee'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: '67f1966c39c1cec7a7fa090446dd3fb12eb984dc61f4e14375ab8a8382c4103d'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
