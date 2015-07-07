cask :v1 => 'lightning' do
  version '1.6'
  sha256 '1858d69a34521273ca8f82dd78a65a4d016f33750b8f2ddf4b7ea81d3485c258'

  url "http://downloads.filewave.com/lightning/FileWave_Lightning-#{version}.dmg"
  name 'FileWave Lightning'
  homepage 'https://www.filewave.com/products/imaging/lightning-thunderbolt'
  license :gratis
  tags :vendor => 'FileWave'

  depends_on :macos => '>= :lion'

  app 'Lightning.app'
end
