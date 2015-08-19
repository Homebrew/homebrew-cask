cask :v1 => 'messenger' do
  version '0.1.3.1439436496-54be52ff0c189880'
  sha256 '409583a98c1a600555e81ae7566cea863995cf33fb1648c3b2aac24e687a1d37'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
