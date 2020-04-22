cask 'djay-pro' do
  version '2.1.4,202004211434'
  sha256 'bb7d4a727fa116adad5b8b399d5445594ac6880df3a859f8215f6a96a1c16c93'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
