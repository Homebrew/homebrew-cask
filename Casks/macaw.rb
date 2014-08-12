class Macaw < Cask
  version '1.5'
  sha256 'cc531d70a49b1f2b923c944015ca19c5e7db7a0616d857dfb1ef67bd82930a54'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml'
  homepage 'http://macaw.co/'

  link 'Macaw.app'
end
