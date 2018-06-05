cask 'dymo-label' do
  version '8.7.2'
  sha256 'cd626b5107b36f935103d68543c1d4fffc37cea26bf3f9996856fda14b08386f'

  url "http://download.dymo.com/dymo/Software/Mac/DLS#{version.major}Setup.#{version}.dmg"
  name 'Dymo Label'
  homepage 'https://www.dymo.com/en-US/online-support'

  pkg "DYMO Label v.#{version.major}.pkg"

  uninstall launchctl: [
                         'com.dymo.dls.webservice',
                         'com.dymo.pnpd',
                       ],
            pkgutil:   [
                         'com.dymo.cups',
                         'com.dymo.dls.*',
                       ]

  zap trash: [
               '~/Library/Preferences/com.dymo.dls.plist',
               '~/Library/Caches/com.dymo.dls',
             ]
end
