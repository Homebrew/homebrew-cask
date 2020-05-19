cask 'ringcentral' do
  version '20.2.20'
  sha256 'a737aa8920c71f3c112f12a4e31b484e6f39660a609b13d8ee64094307591321'

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
