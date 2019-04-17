cask 'aircall' do
  version '2.1.1'
  sha256 '49b8d2f421460eca75c7319d6ee3167dabcf866de348eada2bbd3babfb904da5'

  # s3-us-west-1.amazonaws.com/aircall-electron-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/aircall-electron-releases/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end
