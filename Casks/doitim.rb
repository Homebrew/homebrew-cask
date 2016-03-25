cask 'doitim' do
  version '4.2.3'
  sha256 'd9cc46729385cf94f7fc653e7e425baa33f3a7c193bfe386255b4afc88e685eb'

  url "http://version.doit.im/dl/doit.im.#{version}.zip"
  appcast 'http://version.doit.im/mac/update.xml',
          checkpoint: '4e1f29318d7adf08a0a39da28d53a36ae4389db20b2f005ddfb92effe953c6a6'
  name 'Doit.im'
  homepage 'http://doit.im/'
  license :commercial

  app 'Doit.im.app'
end
