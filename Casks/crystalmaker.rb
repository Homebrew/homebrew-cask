cask 'crystalmaker' do
  version '10.5.3'
  sha256 '9d1814f19a712deaea1adb15ad75d60437e3d8ca067710de49d9c4fd083f7b30'

  url 'http://crystalmaker.com/downloads/crystalmaker_mac.zip'
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name 'CrystalMaker'
  homepage 'http://crystalmaker.com/index.html'

  app 'CrystalMaker.app'
end
