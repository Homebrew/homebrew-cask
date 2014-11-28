cask :v1 => 'ibabel' do
  version :latest
  sha256 :no_check

  url 'http://macinchem.org/ibabel/ibabel3_files/iBabel.zip'
  homepage 'http://www.macinchem.org/ibabel/ibabel3.php'
  license :unknown

  app 'iBabel.app'
end
