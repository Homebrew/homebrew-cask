cask 'daylite' do
  version '6.2.2'
  sha256 '0d06044df60535f6b36164c081ab3133a283a2bd9a3b92c5dd13270e8636e38a'

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
