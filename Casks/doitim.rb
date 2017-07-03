cask 'doitim' do
  version '4.2.6'
  sha256 'bf875f3b200540a708a8d4f404e98bc73b355b81a27183d091d31af73fe4f122'

  url "http://version.doit.im/dl/doit.im.#{version}.zip"
  appcast 'http://version.doit.im/mac/update.xml',
          checkpoint: '533d6dcdb35a7578b79ecbaf96fa24e38eb29470966d09c946326a10e8e775e7'
  name 'Doit.im'
  homepage 'https://doit.im/'

  app 'Doit.im.app'
end
