cask 'blocs' do
  version '2.1.0'
  sha256 'f22ed4864332ee77c92f703757e36eda9e65815f95ac734c4f2273d93758fdda'

  # uistore.io was verified as official when first introduced to the cask
  url 'http://downloads.uistore.io/blocs/version-2/Blocs.zip'
  appcast 'https://uistore.io/blocs/2.0/info.xml',
          checkpoint: '3ea7c2c4eeb437f4a4d03bebfc6e52124c1fd331e907bccc6adf15a1ccc2c649'
  name 'Blocs'
  homepage 'http://blocsapp.com/'
  license :commercial

  auto_updates true

  app 'Blocs.app'
end
