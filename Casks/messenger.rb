cask 'messenger' do
  version '0.1.6.1455039740-1a2c4f98e1dad409'
  sha256 'f208b27e82ebf52452a1536216ccb6f4f0db02492717ff49a1bc7146ed385b36'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
