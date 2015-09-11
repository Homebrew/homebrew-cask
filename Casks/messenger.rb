cask :v1 => 'messenger' do
  version '0.1.4.1440786644-f3436781b1e02ea1'
  sha256 '1b8ea3554aff8a632eb4e39c1b1a2b04e92dfb3a2cc53a805218c3074fac240f'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
