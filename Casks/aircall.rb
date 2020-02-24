cask 'aircall' do
  version '2.3.2'
  sha256 '1ef71dd64b671c1583eafee6fb7f415cc239cbd68dc8f41732c7c5b4ac9747f4'

  # aircall-electron-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/0.0.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end
