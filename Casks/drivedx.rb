cask 'drivedx' do
  version '1.7.0'
  sha256 '2eb4030e205260445dd6dbfcd6e456d4940e746e6db394e4ce6bdae7bd88e1e5'

  url "https://binaryfruit.com/download/drivedx/mac/1/bin/DriveDx.#{version}.zip"
  name 'DriveDX'
  homepage 'https://binaryfruit.com/drivedx'

  app 'DriveDX.app'
end
