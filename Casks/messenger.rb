cask 'messenger' do
  version '0.1.7.1456285881-f419067e835088ec'
  sha256 'c039029d653e6f2aaffc1fd91bc6496e1d5a2c71555dc464f55e5634ed9c2446'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
