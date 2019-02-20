cask 'djay-pro' do
  version '2.0.11,201902151002'
  sha256 'ae5d372814762fad62dae8c5759401e17bd9df9bd3807617a998547bfca9c345'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
