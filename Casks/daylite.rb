cask 'daylite' do
  if MacOS.version <= :high_sierra
    version '6.5.5'
    sha256 '529477859f49bcca08c0704522338201bc0b64de5d58f650c3011d5e711aa223'
    url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.dmg"
    pkg 'Install Daylite & Mail Assistant.pkg'
  else
    version '6.6.1'
    sha256 '6dfca8f331b03dd61e612884dce10c94d76465cf2392292eab5f3f42a9b800e6'
    url "https://download.marketcircle.com/daylite/daylitedma#{version.no_dots}.pkg"
    pkg "daylitedma#{version.no_dots}.pkg"
  end

  appcast 'https://www.marketcircle.com/appcasts/daylite.xml'
  name 'Daylite'
  homepage 'https://www.marketcircle.com/'

  uninstall pkgutil:   [
                         'com.marketcircle.pkg.DLBase',
                         'com.marketcircle.pkg.DMABase',
                         'com.marketcircle.daylite.installer',
                         'com.marketcircle.daylite.mailassistant.installer',
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
