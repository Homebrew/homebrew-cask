cask :v1 => 'keyfinder' do
  version :latest
  sha256 :no_check

  url 'http://www.ibrahimshaath.co.uk/keyfinder/KeyFinder-OSX.zip'
  homepage 'http://www.ibrahimshaath.co.uk/keyfinder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'KeyFinder-OSX/KeyFinder.app'
end
