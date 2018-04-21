cask 'onlyoffice' do
  version '4.8.8'
  sha256 'bdaeac372b42920f6b6d0523d833aab3681adcd87b3d2bac589304d6111ba7b7'

  url "http://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'http://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml',
          checkpoint: 'ee4031cd3c52d4a2605f87ebfcba8afb3b4a8ef20f9c8a6b255702f703c2b1ee'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
