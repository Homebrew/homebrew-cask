cask 'dymo-label' do
  version '8.5.3'
  sha256 '6810594fa0cae1b5906aae11bf9c6cd298f18758238b88319c964e93720d8a78'

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
