cask 'folx' do
  version '5.0.13493'
  sha256 'bfc084391da36755747300645fc0e69d5dd04e064436c2a0d462219918a5e500'

  url "http://www.eltima.com/download/folx-update/downloader_mac_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/folx-updater/folx.xml',
          checkpoint: '525bab4ad5c7d5d84d1f180664f289d9825772c62e3b9147ddd43cb734674785'
  name 'Folx'
  homepage 'http://mac.eltima.com/download-manager.html'
  license :freemium

  app 'Folx.app'
end
