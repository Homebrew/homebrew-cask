cask 'drivedx' do
  version '1.8.0'
  sha256 '78038902cfb33ae82dc1b9ac6b9eaf164ecdf8f13d848effcdafd1dd631a4953'

  url "https://binaryfruit.com/download/drivedx/mac/1/bin/DriveDx.#{version}.zip"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
