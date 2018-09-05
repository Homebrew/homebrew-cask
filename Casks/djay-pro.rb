cask 'djay-pro' do
  version '2.0.6,201806121430'
  sha256 'cc2d8ab3c93df39971107a81db75e06c554eb876a517e94cf2e273115654ce7d'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
