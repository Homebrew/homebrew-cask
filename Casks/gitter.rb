class Gitter < Cask
  version '1.153'
  sha256 '0f43013164d6c54d580d9bc2859d8325507a73f8db604b04cb42f04adefa6a8f'

  url 'http://update.gitter.im/osx/Gitter-1.153.dmg'
  appcast 'http://update.gitter.im/osx/appcast.xml'
  homepage 'https://gitter.im/'

  app 'Gitter.app'
end
