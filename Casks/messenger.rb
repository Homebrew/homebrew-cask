cask :v1 => 'messenger' do
  version '0.0.9.1434655833-20a46b37192bfacc'
  sha256 '3425494ad9d45cb0458254296e5e09103dbfe3c05f1c1b7b0c0a0abc19a7264c'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
