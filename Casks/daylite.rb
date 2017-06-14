cask 'daylite' do
  version '6.2'
  sha256 'e4229c3cacabddb74008e774420c2e3912138bce16f95b84d63ae1178ad3d696'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.dmg"
  name 'Daylite'
  homepage 'https://www.marketcircle.com/'

  pkg 'Install Daylite & Mail Assistant.pkg'

  uninstall pkgutil:   [
                         'com.marketcircle.pkg.DLBase',
                         'com.marketcircle.pkg.DMABase',
                       ],
            launchctl: [
                         'com.marketcircle.persistence.autoupdate',
                         '*.com.marketcircle.Daylite-Helper',
                       ],
            signal:    [
                         ['TERM', 'com.marketcircle.daylite'],
                         ['TERM', 'com.marketcircle.persistence.autoupdate'],
                         ['KILL', '*.com.marketcircle.Daylite-Helper'],
                       ]

  zap delete: [
                '~/Library/Application Support/com.marketcircle.daylite',
                '~/Library/Caches/com.marketcircle.daylite',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.marketcircle.daylite',
                '~/Library/Group Containers/*.com.marketcircle.daylite',
                '~/Library/Preferences/com.marketcircle.daylite.plist',
                '~/Library/Saved Application State/com.marketcircle.daylite.savedState',
              ]
end
