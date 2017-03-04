cask 'dymo-label' do
  version '8.6'
  sha256 '9cf5440008967274189a8124461a3a80481d3c4b2ff14d262257a691216add7a'

  url "http://download.dymo.com/dymo/Software/Mac/DLS#{version.major}Setup.#{version}.dmg"
  name 'Dymo Label'
  homepage 'https://www.dymo.com/en-US/online-support'

  pkg "DYMO Label v.#{version.major}.pkg"

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
