cask 'crystalmaker' do
  version '10.4.7'
  sha256 '0ab005b3117ce4a2da305b8e136def8aaed934b2c5c09c32291c70f208cf26e1'

  url 'http://crystalmaker.com/downloads/crystalmaker_mac.zip'
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name 'CrystalMaker'
  homepage 'http://crystalmaker.com/index.html'

  app 'CrystalMaker.app'
end
