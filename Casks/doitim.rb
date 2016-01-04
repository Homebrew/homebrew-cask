cask 'doitim' do
  version '4.2.3'
  sha256 'd9cc46729385cf94f7fc653e7e425baa33f3a7c193bfe386255b4afc88e685eb'

  url "http://version.doit.im/dl/doit.im.#{version}.zip"
  appcast 'http://version.doit.im/mac/update.xml',
          :sha256 => '77ffb114e798daded7492f6ef651a45e61f265b88918b519265014210f2f214f'
  name 'Doit.im'
  homepage 'http://doit.im/'
  license :commercial

  app 'Doit.im.app'
end
