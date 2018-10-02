cask 'daylite' do
  version '6.6'
  sha256 'dde1ebdc27b4a63c763c901004520401c984a4c1fb06c2a40a93ef5b11095b8b'

  url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.pkg"
  appcast 'https://www.marketcircle.com/appcasts/daylite.xml'
  name 'Daylite'
  homepage 'https://www.marketcircle.com/'

  pkg "daylitedma#{version.no_dots}.pkg"

  uninstall pkgutil:   [
                         'com.marketcircle.pkg.DLBase',
                         'com.marketcircle.pkg.DMABase',
                       ],
            launchctl: [
                         'com.marketcircle.persistence.autoupdate',
                         'com.marketcircle.Daylite-Helper',
                       ],
            signal:    [
                         ['TERM', 'com.marketcircle.daylite'],
                         ['TERM', 'com.marketcircle.persistence.autoupdate'],
                         ['KILL', '*.com.marketcircle.Daylite-Helper'],
                       ]

  zap trash: [
               '~/Library/Application Support/com.marketcircle.daylite',
               '~/Library/Caches/com.marketcircle.daylite',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.marketcircle.daylite',
               '~/Library/Group Containers/*.com.marketcircle.daylite',
               '~/Library/Preferences/com.marketcircle.daylite.plist',
               '~/Library/Saved Application State/com.marketcircle.daylite.savedState',
             ]
end
