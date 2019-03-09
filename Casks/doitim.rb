cask 'doitim' do
  version '4.2.6'
  sha256 'bf875f3b200540a708a8d4f404e98bc73b355b81a27183d091d31af73fe4f122'

  url "https://version.doit.im/dl/doit.im.#{version}.zip"
  appcast 'https://version.doit.im/json/versions.json'
  name 'Doit.im'
  homepage 'https://doit.im/'

  app 'Doit.im.app'
end
