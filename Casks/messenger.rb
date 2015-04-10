cask :v1 => 'messenger' do
  version '0.0.3.1428564817-e5d7ed3698917650'
  sha256 '9a4dbdc57655512cbc357e516b5b781443698937fb5e358b319f1ace8b8ce1d7'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
