cask :v1 => 'lightning' do
  version '1.8.3'
  sha256 '3ececcf522275b458257295d58738b48f98c6c2e66ea1d611952455c853dafb3'

  url "http://downloads.filewave.com/lightning/FileWave_Lightning-#{version}.dmg"
  name 'FileWave Lightning'
  homepage 'https://www.filewave.com/products/imaging/lightning-thunderbolt'
  license :gratis
  tags :vendor => 'FileWave'

  depends_on :macos => '>= :lion'

  app 'Lightning.app'
end
