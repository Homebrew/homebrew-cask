cask :v1 => 'bbedit' do
  version '11.1'
  sha256 '38e239252e90b787d257b6257dcce13f14f346fb860bf6fb38a20f2698f86855'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '56c7ab1c28592ff27d42cfe28c188b79c6fa81ae9a9639dcc82b1a83174f451e'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
