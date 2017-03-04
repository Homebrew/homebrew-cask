cask 'djay-pro' do
  version '1.4.2,201611211720'
  sha256 '5c19c6b1d8bda8f339b3df29f11d467e40f200a39e528950da25144e59db51c5'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: 'e7a64c7779d10c61c11ce60783065df86adcadd6190b6d0a2a8c32687f1a345f'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app 'djay Pro.app'
end
