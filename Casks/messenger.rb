cask :v1 => 'messenger' do
  version '0.1.5.1442536116-8f43a2f9c4d47b7b'
  sha256 'b26068e8a9950e8e60edaacdb54d2faf4be314afa24f5dead6e6101eb7dbb420'

  url "http://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  name 'Messenger'
  homepage 'http://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
