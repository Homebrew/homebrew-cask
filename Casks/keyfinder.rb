cask :v1 => 'keyfinder' do
  version :latest
  sha256 :no_check

  url 'http://www.ibrahimshaath.co.uk/keyfinder/KeyFinder-OSX.zip'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'
  license :unknown

  app 'KeyFinder-OSX/KeyFinder.app'
end
