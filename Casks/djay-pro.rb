cask 'djay-pro' do
  version '2.0.5,201805291557'
  sha256 'e5e6989c1e17f7258714a7925b062113a79f2f85c2f076961b325d41181ae13d'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: '69ad26a2f14cf60ca0b4896fc2e9bb74bd96dbd8ef3e03e9eb432d1553b7ee1d'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
