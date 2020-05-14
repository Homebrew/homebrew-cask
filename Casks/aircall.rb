cask 'aircall' do
  version '2.4.7'
  sha256 '5063958d9b84036997218821b5a8d54c974c963faa2d07d5a2e14a1f4dcee93c'

  # aircall-electron-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/0.0.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end
