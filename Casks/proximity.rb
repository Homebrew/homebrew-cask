cask :v1 => 'proximity' do
  version '1.5'
  sha256 '3ac0e90ffee62a6fadf2bb697393442f3cd87f4084ffdccf9cccf10cb86b3203'

  url "https://reduxcomputing-proximity.googlecode.com/files/Proximity%20#{version}.zip"
  homepage 'https://code.google.com/p/reduxcomputing-proximity/'
  license :oss

  app 'Proximity.app'
end
