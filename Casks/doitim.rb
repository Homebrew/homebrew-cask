cask 'doitim' do
  version '4.2.6'
  sha256 'bf875f3b200540a708a8d4f404e98bc73b355b81a27183d091d31af73fe4f122'

  url "http://version.doit.im/dl/doit.im.#{version}.zip"
  appcast 'http://version.doit.im/mac/update.xml',
          checkpoint: 'd8c81316e984d4a3e9071020c83dbbfcf8262b85a76d745966f2c0099102dc7e'
  name 'Doit.im'
  homepage 'https://doit.im/'

  app 'Doit.im.app'
end
