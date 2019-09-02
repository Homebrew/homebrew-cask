cask 'indigo' do
  version '7.3.1'
  sha256 '8d1d1274c35c2cc9a15e5f804b2bb9b98afdb06ca14f1a46931065d57e7d3089'

  # goprism.com was verified as official when first introduced to the cask
  url "http://cloud.goprism.com/download/Indigo_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.indigodomo.com/downloads.html'
  name 'Indigo'
  name 'Indigo Domotics'
  homepage 'https://www.indigodomo.com/'

  pkg 'Indigo Installer.pkg'

  uninstall launchctl: 'com.perceptiveautomation.IndigoServer2',
            pkgutil:   'com.perceptiveautomation.pkg.indigo*',
            quit:      [
                         'com.perceptiveautomation.indigo-client6',
                         'com.perceptiveautomation.indigo-server',
                       ]

  zap trash: [
               "/Library/Application Support/Perceptive Automation/Indigo #{version.major}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.perceptiveautomation.indigo-client#{version.major}.sfl*",
               '~/Library/Caches/com.perceptiveautomation.indigo-client6',
               '~/Library/Caches/com.perceptiveautomation.indigo-server',
               '~/Library/Preferences/com.perceptiveautomation.indigo-client6.plist',
               "~/Library/Preferences/Indigo #{version.major} Client Prefs.indiPref",
               "~/Library/Preferences/Indigo #{version.major} Client Settings.indiPref",
             ]
end
