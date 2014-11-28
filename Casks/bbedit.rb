cask :v1 => 'bbedit' do
  version '11.0.1'
  sha256 '8d2674b1aca6685160fb44b63ebc658e39cf1eda948a1fb7cf7d90e090f30557'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '56c7ab1c28592ff27d42cfe28c188b79c6fa81ae9a9639dcc82b1a83174f451e'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
