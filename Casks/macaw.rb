class Macaw < Cask
  version '1.5.4'
  sha256 '448684a27886b217f723c3af45711fff6c71e9a6e4128c1c965a17e6c0521189'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml'
  homepage 'http://macaw.co/'

  app 'Macaw.app'
end
