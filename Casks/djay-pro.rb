cask 'djay-pro' do
  version '1.4.5,201711160911'
  sha256 '2d1f235645c9c12fcadeb9b5871be8d12d1f506c3a7df04ce81a4853d5a74c54'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: '69c18697947f90eaba7484a724976e4e9c1141d5361e0a4e9c1f7649c2b09ed1'
  name 'Algoriddim djay Pro'
  homepage 'https://www.algoriddim.com/djay-pro-mac'

  app 'djay Pro.app'
end
