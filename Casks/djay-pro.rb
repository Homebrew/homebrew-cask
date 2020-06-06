cask 'djay-pro' do
  version '2.2.2,202006031125'
  sha256 '7d136eb34bf8cca4ae6053c23c14e2072cbe508c1f1adb0f2ee74fe65b55894e'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
