cask 'ibabel' do
  version :latest
  sha256 :no_check

  url 'https://macinchem.org/ibabel/iBabel.zip'
  name 'iBabel'
  homepage 'https://www.macinchem.org/ibabel/ibabel3_6.php'

  app 'iBabel.app'
end
