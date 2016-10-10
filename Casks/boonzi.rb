cask 'boonzi' do
  version '42.4'
  sha256 'a84fb3ffdb2358f01b3fe636428cde71f383e78389aec540bc6af7f5371d802d'

  url "http://www.boonzi.pt/releases/boonzi.#{version}.dmg"
  name 'Boonzi'
  homepage 'http://www.boonzi.pt/'

  app 'Boonzi.app'
end
