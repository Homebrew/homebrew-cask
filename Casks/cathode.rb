cask 'cathode' do
  version '2.3.0'
  sha256 'dd176890c8e8d6d37334440b13402d04b5344d009804f8624985cef3c081ac8b'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s3.amazonaws.com/cjcaufield/products/cathode/cathode_#{version.gsub('.','')}.zip"
  appcast 'http://store.secretgeometry.com/appcast.php?id=7',
          :sha256 => '4c319653dc0883e0534eae3b2e51ecf92e6ff7f91d9329e1c2e8c39139cb1eee'
  name 'Cathode'
  homepage 'http://www.secretgeometry.com/apps/cathode'
  license :commercial

  app 'Cathode.app'
end
