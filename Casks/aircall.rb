cask 'aircall' do
  version '2.4.8'
  sha256 '845c3556333d3c4f2b684780b18adc3cdbfe33738ed9954e82b340ce6677407d'

  # aircall-electron-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/0.0.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end
