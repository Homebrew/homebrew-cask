cask :v1 => 'bbedit' do
  version '11.0'
  sha256 '3c15fef50245e93073e73136bb7097faf1f03a061559eed84a17cb8678fdf033'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '56c7ab1c28592ff27d42cfe28c188b79c6fa81ae9a9639dcc82b1a83174f451e'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
