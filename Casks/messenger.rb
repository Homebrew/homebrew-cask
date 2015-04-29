cask :v1 => 'messenger' do
  version '0.0.7.1430161367-3a36310384c36809'
  sha256 '9e840b5f8b52d4c85e009244a8e17a1c932b57dc64a78c5d2ab9e40c0f8022cd'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
