cask 'messenger' do
  version '0.1.7.1459534376-b3a4a21fc7da0c8b'
  sha256 'ba47eddc257d8e10bbfa426f01c1272b5a3bae9b4d3afdc354ca1284a78548e4'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
