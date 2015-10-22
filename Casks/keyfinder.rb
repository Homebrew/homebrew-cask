cask :v1 => 'keyfinder' do
  version :latest
  sha256 :no_check

  url 'http://www.ibrahimshaath.co.uk/keyfinder/bins/KeyFinder-OSX.zip'
  name 'KeyFinder'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'
  license :gpl

  app 'KeyFinder-OSX/KeyFinder.app'
end
