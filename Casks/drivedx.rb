cask 'drivedx' do
  version '1.6.0'
  sha256 'ddcc2717fa069ffd198f52044594ed71a2a00865ee3aa1ceedc4fdcfb6496146'

  url "https://binaryfruit.com/download/drivedx/mac/1/bin/DriveDx.#{version}.zip"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
