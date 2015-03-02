cask :v1 => 'namecoin' do
  version '0.3.76-18dfe28'
  sha256 '4ac23e1efdd7b735c40faddf8a7e1820f5837a1e2425748d4016bc4ce8be7378'

  url "https://namecoin.info/files/Namecoin-Qt.app-#{version}.zip"
  name 'Namecoin'
  homepage 'https://namecoin.info/'
  license :mit

  app 'Namecoin-Qt.app'
end
