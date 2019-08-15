cask 'djay-pro' do
  version '2.0.14,201908140917'
  sha256 '27d40ddaf932a553f38ba3a59222ff575c7327968aa58d5f78f8897704031563'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
