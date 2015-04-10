cask :v1 => 'messenger' do
  version '0.0.4.1428634580-a80cddf5538e66d6'
  sha256 '87fefab0e0a30dfafe2fe1754cbdf014ad66fa5a6cf33ea3848b635bbe13ec61'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
