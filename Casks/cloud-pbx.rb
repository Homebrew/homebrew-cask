cask 'cloud-pbx' do
  version '22.7.0.429'
  sha256 'ea3a1c5a69f52e7c772d60fd89ae1a3cc7474021a7c75f70dcf390b04e0fe882'

  # cpbx-hilfe.deutschland-lan.de/downloads was verified as official when first introduced to the cask
  url 'https://cpbx-hilfe.deutschland-lan.de/downloads/desktop-clients/cloud-pbx.osx-22.7.0.429'
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
