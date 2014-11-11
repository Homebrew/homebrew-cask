class Genymotion < Cask
  version '2.3.1'
  sha256 'a9af8f9ec2793daa1c53edc13af211367762960e3a3cffc444d7516d1df3c984'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  homepage 'http://www.genymotion.com/'
  license :unknown

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
end
