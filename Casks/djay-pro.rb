cask 'djay-pro' do
  version '2.2.1,202005291549'
  sha256 '6365ccaf004ccc9550264a2a11a4566a6c1d7ccdfb3c4c06499cfd018e70f7a8'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
