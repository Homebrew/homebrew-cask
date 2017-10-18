cask 'qcad' do
  version '3.18.1'
  sha256 'b2c8a9ab627466735cef953affa23555ae623a44769e4e02fa7b790958219954'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
