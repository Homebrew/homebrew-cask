cask 'daylite' do
  version '6.2.3'
  sha256 '6b10b811ce2dee364ad7cbf8685d16bec107bd9b3222326fe0ddfaba97c06a55'

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

  zap trash: [
               '~/Library/Application Support/com.marketcircle.daylite',
               '~/Library/Caches/com.marketcircle.daylite',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.marketcircle.daylite',
               '~/Library/Group Containers/*.com.marketcircle.daylite',
               '~/Library/Preferences/com.marketcircle.daylite.plist',
               '~/Library/Saved Application State/com.marketcircle.daylite.savedState',
             ]
end
