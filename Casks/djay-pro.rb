cask 'djay-pro' do
  version '2.0.4,201802011630'
  sha256 '81f0355e189a85d6055d2bea6bbe3be907fbb8b528e04de68f201d3fb83d83c6'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: 'c1c0da0f5d81341f272b4c0309ec78eb71151481ce3f9c5f5913eb67b04e4662'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
