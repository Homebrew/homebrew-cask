cask 'folx' do
  version '4.2.13332'
  sha256 '5664c147dc0b848a2705659a206b02293e4b97f13dc1b5976a6e3435f1c41708'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: '5842b05fba51144ad903c431987cb91de8876703065f3ab6801e2de0f7eb2a88'
  name 'Folx'
  homepage 'http://mac.eltima.com/download-manager.html'
  license :freemium

  app 'Folx.app'
end
