cask 'semulov' do
  version '2.1.1'
  sha256 'bb3b30387ad6197ad3f158ed9f0ba2da3326d02e4efca12672dbcc78d69dd555'

  url 'https://www.kainjow.com/downloads/Semulov.zip'
  appcast 'https://kainjow.com/updates/semulov.xml',
          checkpoint: '0764186f5017aac6f1adbaf2cdc1732f8038af7cd673909fd612ea9e255adff4'
  name 'Semulov'
  homepage 'https://www.kainjow.com'

  app 'Semulov.app'
end
