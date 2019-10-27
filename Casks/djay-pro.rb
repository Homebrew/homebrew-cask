cask 'djay-pro' do
  version '2.0.15,201910251342'
  sha256 '6eb4e325ef9f0cfd0ad038059d993296fb690fbdc5ec890d0e3a2177d59ec2a4'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
