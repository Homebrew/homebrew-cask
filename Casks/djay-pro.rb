cask 'djay-pro' do
  version '2.0.16,201912170828'
  sha256 '5a88310f36ee09631a9ecf2718aabbcfff6759e292bc12edb162eb6d09fae00a'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
