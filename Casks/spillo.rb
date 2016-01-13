cask 'spillo' do
  version '1.6.4'
  sha256 '6c7dfd1f09b3e97b1c3d7ddcab4c5aac4b1c79a6771fff56af88a4d3d056f886'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          :checkpoint => 'ff1bcfcb8ff7c547b95a44074fd395899b4eb525d3edf3a86b9e566bf37ea6f7'
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
