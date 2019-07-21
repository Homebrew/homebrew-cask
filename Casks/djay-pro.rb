cask 'djay-pro' do
  version '2.0.13,201906011335'
  sha256 '6b1bd826c374cc5545a3d2650939e06bfedecd78412ccf85dd8447ead0f45c4e'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
