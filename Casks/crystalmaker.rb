cask 'crystalmaker' do
  version '10.4.5'
  sha256 'd51f00f0f0bc4579b90f04098221dbc4b0d0b2e714ef3ee6baefe8baf8873299'

  url 'http://crystalmaker.com/downloads/crystalmaker_mac.zip'
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name 'CrystalMaker'
  homepage 'http://crystalmaker.com/index.html'

  app 'CrystalMaker.app'
end
