cask 'cloud-pbx' do
  version '22.7.3.176'
  sha256 '7c5b080dda8377e01aa841c5e02cae7724d652bcec694b3fab7d99173099ed14'

  # cpbx-hilfe.deutschland-lan.de/downloads/ was verified as official when first introduced to the cask
  url "https://cpbx-hilfe.deutschland-lan.de/downloads/desktop-clients/cloud-pbx.osx-#{version}"
  appcast 'https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads'
  name 'Cloud PBX'
  homepage 'https://geschaeftskunden.telekom.de/startseite/festnetz-internet/tarife/332198/telefonanlage-aus-der-cloud.html'

  app 'Cloud PBX.app'

  zap trash: [
               '~/Library/Application Support/Telekom Deutschland GmbH',
               '~/Library/Caches/Telekom Deutschland GmbH',
               '~/Library/Preferences/com.broadsoft.communicator.plist',
               '~/Library/Saved Application State/com.broadsoft.communicator.savedState',
               '~/Library/Preferences/de.deutschland-lan.Cloud PBX.plist',
             ]
end
