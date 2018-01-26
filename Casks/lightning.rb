cask 'lightning' do
  version '1.8.7'
  sha256 'e935a4a2109de23eb314b2f3992efbdf80ac4ce8916200484cbd86b828652852'

  url "https://fwdl.filewave.com/lightning/FileWave_Lightning-#{version}.dmg"
  name 'FileWave Lightning'
  homepage 'https://www.filewave.com/products/imaging/lightning-thunderbolt'

  depends_on macos: '>= :lion'

  app 'Lightning.app'
end
