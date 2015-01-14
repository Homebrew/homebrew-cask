cask :v1 => 'bbedit' do
  version '11.0.2'
  sha256 '754066ded35248eaad217d458ca647365dbddf9c0073a1403183038c6f586fd2'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          :sha256 => '56c7ab1c28592ff27d42cfe28c188b79c6fa81ae9a9639dcc82b1a83174f451e'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
