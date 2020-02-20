cask 'djay-pro' do
  version '2.1.1,202002142237'
  sha256 'f4b5f9a37fe91c75fe419b3d60ba8cef0d89dbb95024caa02d98103f1b6f97c9'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app "djay Pro #{version.major}.app"
end
