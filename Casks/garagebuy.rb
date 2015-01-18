cask :v1 => 'garagebuy' do
  version '3.1.1'
  sha256 '4f7b7b941a40be516d923338df84a43073149f785d123ea2ff938f412757f8cf'

  # iwascoding.de is the official download host per the vendor homepage
  url "http://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  homepage 'http://www.iwascoding.com/GarageBuy'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GarageBuy.app'
end
