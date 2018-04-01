cask 'boonzi' do
  version '44.2'
  sha256 '613bdc7342ffb225c892c40a2acfc4e81650f70b1b55b595cbdcc74ddad87a9e'

  url "http://www.boonzi.pt/releases/boonzi.#{version}.dmg"
  name 'Boonzi'
  homepage 'http://www.boonzi.pt/'

  app 'Boonzi.app'
end
