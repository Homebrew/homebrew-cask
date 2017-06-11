cask 'drivedx' do
  version '1.5.1'
  sha256 '32c9cc2cc5c28ce8a1800d4dc805fcdea040c0aab86f8ae9f658d94c5ff13668'

  url "https://binaryfruit.com/download/drivedx/mac/1/bin/DriveDx.#{version}.zip"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
