class Macaw < Cask
  version '1.0.13'
  sha256 'b7c0ff0a0ae178b64fa100790f0a790e578c3ab272dc493fd12ed288be2f28ad'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml'
  homepage 'http://macaw.co/'

  link 'Macaw.app'
end
