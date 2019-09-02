cask 'drivedx' do
  version '1.8.2'
  sha256 'a9d0ac0f1fd9098eb6eb64c53fd4077cece81658e27f8a992b4a3966edb8d993'

  url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/bin/DriveDx.#{version}.zip"
  appcast "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/?appcast&appName=DriveDxMac"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
