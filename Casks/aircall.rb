cask 'aircall' do
  version '1.4.6'
  sha256 'af236681d59eaad9178d98ce8ff277bf7feb1cb10ec61de2f37205e0363cbc93'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '49896c1d229b67bd8f347dc82acdca6407198205204efc6952de1d1664ca33bb'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
