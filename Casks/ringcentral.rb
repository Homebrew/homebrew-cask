cask 'ringcentral' do
  version '20.3.10'
  sha256 '9cf3c3f58ea950f559be09567b86d76403ae17784e0966d3de696007dd119c33'

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
