cask 'ringcentral' do
  version '20.2.31'
  sha256 'acbf0577337546da9275a602a13f79c1482cf287e17cde2774b2cc4df82d464b'

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
