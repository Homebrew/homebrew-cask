cask 'license-control-center' do
  version :latest
  sha256 :no_check

  url 'https://download.steinberg.net/downloads/eLicenserControl.dmg'
  name 'eLicenser Control Center'
  homepage 'https://www.steinberg.net/en/company/technologies/elicenser.html'

  installer manual: 'eLicenserControlSetup.app'

  uninstall delete: [
                      '/Applications/License Control Center.app',
                      '/Library/Receipts/eLicenserControl.pkg',
                      '/Library/Receipts/LCC.pkg',
                      '/Library/Receipts/NOS.pkg',
                      '/Library/Receipts/POS.pkg',
                    ]

  zap trash: [
               '/Library/Application Support/Syncrosoft',
               '/Library/Application Support/eLicenser',
               '/Library/Syncrosoft',
               '/var/db/receipts/com.syncrosoft.*',
               '/var/db/receipts/com.eLicenser.*',
               '~/Library/Preferences/com.Syncrosoft.LCC.plist',
               '~/Library/Saved Application State/com.Syncrosoft.LCC.savedState',
             ]
end
