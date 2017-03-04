cask 'lightning' do
  version '1.8.4'
  sha256 '98eca9d7ea7e8f35c213d646830f773f923b28abf13df81eb6560ba488d5d80f'

  url "https://fwdl.filewave.com/lightning/FileWave_Lightning-#{version}.dmg"
  name 'FileWave Lightning'
  homepage 'https://www.filewave.com/products/imaging/lightning-thunderbolt'

  depends_on macos: '>= :lion'

  app 'Lightning.app'
end
