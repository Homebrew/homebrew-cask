cask 'dymo-label' do
  version '8.6.2'
  sha256 'efda7c1428974261c77b765d94751502eaf58521f179c8bc169362f9fddaee6e'

  url "http://download.dymo.com/dymo/Software/Mac/DLS#{version.major}Setup.#{version}.dmg"
  name 'Dymo Label'
  homepage 'https://www.dymo.com/en-US/online-support'

  pkg "DYMO Label v.#{version.major}.pkg"

  uninstall launchctl: 'com.dymo.pnpd',
            pkgutil:   [
                         'com.dymo.cups',
                         'com.dymo.dls.addressbook.addin',
                         'com.dymo.dls.application',
                         'com.dymo.dls.appsupport',
                         'com.dymo.dls.documents',
                         'com.dymo.dls.frameworks',
                         'com.dymo.dls.npapi.addin',
                         'com.dymo.dls.office.addins',
                         'com.dymo.dls.safari.addin',
                       ]

  zap delete: [
                '~/Library/Preferences/com.dymo.dls.plist',
                '~/Library/Caches/com.dymo.dls',
              ]
end
