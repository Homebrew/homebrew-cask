cask 'crystalmaker' do
  version '10.5.2'
  sha256 '3bff8e69a8edc992b65d38d934161206121fe2df1d1e0799566f402947d9a4f0'

  url 'http://crystalmaker.com/downloads/crystalmaker_mac.zip'
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name 'CrystalMaker'
  homepage 'http://crystalmaker.com/index.html'

  app 'CrystalMaker.app'
end
