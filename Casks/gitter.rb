class Gitter < Cask
  version '1.153'
  sha256 '0f43013164d6c54d580d9bc2859d8325507a73f8db604b04cb42f04adefa6a8f'

  url "http://update.gitter.im/osx/Gitter-#{version}.dmg"
  appcast 'http://update.gitter.im/osx/appcast.xml',
          :sha256 => 'd7f4a27606703839676ad13c58c1d21c4ac9dae5d76ccff28f92e7d58b787912'
  homepage 'https://gitter.im/'
  license :unknown

  app 'Gitter.app'
end
