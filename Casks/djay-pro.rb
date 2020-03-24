cask 'djay-pro' do
  version '2.1.2,202003131654'
  sha256 '89cbeabe465aa70b4bc3f2a5494a5743154e34860eb27ab6555a592041e89f6a'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
