cask 'crystalmaker' do
  version '10.4.6'
  sha256 '303641e20557b1237d94e9246a483bca19a626bd2df7a2e7567407f90f803f7c'

  url 'http://crystalmaker.com/downloads/crystalmaker_mac.zip'
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name 'CrystalMaker'
  homepage 'http://crystalmaker.com/index.html'

  app 'CrystalMaker.app'
end
