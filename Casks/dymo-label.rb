cask 'dymo-label' do
  version '8.5.2'
  sha256 '8cd8e0d135613d48ddb41189ff352eb53214390d149c5afcb6c25f419518c54e'

  url "http://download.dymo.com/dymo/Software/Mac/DLS#{version.to_i}Setup.#{version}.dmg"
  name 'Dymo Label'
  homepage 'https://www.dymo.com/en-US/online-support'
  license :gratis

  pkg "DYMO Label v.#{version.to_i}.pkg"

  uninstall launchctl: 'com.dymo.pnpd',
            pkgutil:   %w[
                         com.dymo.cups
                         com.dymo.dls.addressbook.addin
                         com.dymo.dls.application
                         com.dymo.dls.appsupport
                         com.dymo.dls.documents
                         com.dymo.dls.frameworks
                         com.dymo.dls.npapi.addin
                         com.dymo.dls.office.addins
                         com.dymo.dls.safari.addin
                       ]

  zap delete: [
                '~/Library/Preferences/com.dymo.dls.plist',
                '~/Library/Caches/com.dymo.dls',
              ]
end
