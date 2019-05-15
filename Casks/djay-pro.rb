cask 'djay-pro' do
  version '2.0.12,201905091333'
  sha256 'ba2c02a5e8040b7b639aee24c2b1ee8e053fd6e9968ee2e84a337ad856148614'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
