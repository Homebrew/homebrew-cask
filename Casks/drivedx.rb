cask 'drivedx' do
  version '1.8.1'
  sha256 '700e14fccca7a66fd723f5af67ed1d7f1406fd1ba5675073cb73ab9c3ec6b48e'

  url "https://binaryfruit.com/download/drivedx/mac/1/bin/DriveDx.#{version}.zip"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
