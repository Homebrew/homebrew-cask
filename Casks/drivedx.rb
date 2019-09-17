cask 'drivedx' do
  version '1.8.3'
  sha256 'fd11eac52d90c121daf17852e0c2604c60a03f3f7c7ee6752e623286b79f1bb0'

  url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/bin/DriveDx.#{version}.zip"
  appcast "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/?appcast&appName=DriveDxMac"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
