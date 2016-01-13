cask 'doitim' do
  version '4.2.3'
  sha256 'd9cc46729385cf94f7fc653e7e425baa33f3a7c193bfe386255b4afc88e685eb'

  url "http://version.doit.im/dl/doit.im.#{version}.zip"
  appcast 'http://version.doit.im/mac/update.xml',
          :checkpoint => '438dfb090d7b19182669908a891186368d4af5b019a9e7168e4c08c92827b54d'
  name 'Doit.im'
  homepage 'http://doit.im/'
  license :commercial

  app 'Doit.im.app'
end
