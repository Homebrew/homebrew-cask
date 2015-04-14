cask :v1 => 'messenger' do
  version '0.0.5.1428972877-9f25fb1b20a9cacd'
  sha256 '0e124aebf3faab9eca2ca2527e6dd1b053f0229e412504aa6304c7da7657e393'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
