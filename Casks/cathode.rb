cask 'cathode' do
  version '2.3.0'
  sha256 'dd176890c8e8d6d37334440b13402d04b5344d009804f8624985cef3c081ac8b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/cjcaufield/products/cathode/cathode_#{version.gsub('.', '')}.zip"
  appcast 'http://store.secretgeometry.com/appcast.php?id=7',
          :checkpoint => '7ad75fdca0ba2c18e84f44e08f9fc272a7b2c7c83f586541fd790c9a4b89b30d'
  name 'Cathode'
  homepage 'http://www.secretgeometry.com/apps/cathode'
  license :commercial

  app 'Cathode.app'
end
