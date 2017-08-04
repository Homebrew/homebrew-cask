cask 'doitim' do
  version '4.2.6'
  sha256 'bf875f3b200540a708a8d4f404e98bc73b355b81a27183d091d31af73fe4f122'

  url "http://version.doit.im/dl/doit.im.#{version}.zip"
  appcast 'http://version.doit.im/mac/update.xml',
          checkpoint: '12e5c755ba8e9ea0acd8b1cc8c045f1195287c2bbf2671cbb8d60b6155d7c6eb'
  name 'Doit.im'
  homepage 'https://doit.im/'

  app 'Doit.im.app'
end
