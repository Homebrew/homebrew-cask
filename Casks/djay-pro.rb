cask 'djay-pro' do
  version '2.2,202005131520'
  sha256 'b03c86f07a43bb4d7926341a42d835feeee61d6b8d97e7991d81b8692d754a72'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
