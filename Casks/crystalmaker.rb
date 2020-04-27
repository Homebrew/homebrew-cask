cask 'crystalmaker' do
  version '10.5.1'
  sha256 'a0d0a2b1363514c24f03b7ffc85441a774275e00b48eeb25138f9929698e0b80'

  url 'http://crystalmaker.com/downloads/crystalmaker_mac.zip'
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name 'CrystalMaker'
  homepage 'http://crystalmaker.com/index.html'

  app 'CrystalMaker.app'
end
