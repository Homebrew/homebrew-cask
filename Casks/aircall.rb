cask 'aircall' do
  version '2.3.3'
  sha256 'e39be9465a328c3e028baddc80be1b9743265b1314dba826d3725e610e88de20'

  # aircall-electron-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/0.0.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end
