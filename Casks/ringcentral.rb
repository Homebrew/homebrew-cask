cask 'ringcentral' do
  version '20.2.30'
  sha256 'a163e5cec8734052967392eb8cd9ddd52a72f985a8abce27eb2380ea0926ad95'

  url 'https://app.ringcentral.com/downloads/RingCentral.pkg'
  appcast 'https://app.ringcentral.com/download/latest-mac.yml'
  name 'RingCentral'
  homepage 'https://www.ringcentral.com/rcapp.html'

  pkg 'RingCentral.pkg'

  uninstall delete:  '/Applications/RingCentral.app',
            quit:    'RingCentral',
            pkgutil: 'com.ringcentral.glip'

  zap trash: [
               '~/Library/Application Support/RingCentral',
               '~/Library/Logs/RingCentral',
               '~/Library/Preferences/com.ringcentral.glip.plist',
               '~/Library/Saved Application State/com.ringcentral.glip.savedState',
             ]
end
