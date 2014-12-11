cask :v1 => 'keyfinder' do
  version :latest
  sha256 :no_check

  url 'http://www.ibrahimshaath.co.uk/keyfinder/KeyFinder-OSX.zip'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'
  license :unknown    # todo: improve this machine-generated value

  app 'KeyFinder-OSX/KeyFinder.app'
end
