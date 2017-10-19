cask 'djay-pro' do
  version '1.4.4,201709270943'
  sha256 '78a5ff0a2d5f72ff69a62b037e5fbdb773a726ac7ca0a23b7b592ddae2a8f55d'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: '6dca3dbb45cda0623d16461f6fde35d2f628e79064579e6b02ca39ae932ef49b'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app 'djay Pro.app'
end
