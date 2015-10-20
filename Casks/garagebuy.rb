cask :v1 => 'garagebuy' do
  version '3.2'
  sha256 'b54c2b2e11f9a449fa3211c6db98c6f26f2418b88c89cb0272c9014c6f5c23ea'

  # iwascoding.de is the official download host per the vendor homepage
  url "http://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  name 'GarageBuy'
  homepage 'https://www.iwascoding.com/GarageBuy'
  license :gratis

  app 'GarageBuy.app'
end
