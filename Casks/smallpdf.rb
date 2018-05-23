cask 'smallpdf' do
  version :latest
  sha256 :no_check

  url 'https://download.smallpdf.com/desktop/mac/Smallpdf.dmg'
  name 'Smallpdf'
  homepage 'https://smallpdf.com/pdf-reader'

  app 'Smallpdf.app'
end
