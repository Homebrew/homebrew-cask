cask 'indigo' do
  version '7.1.0'
  sha256 'e50f9c5aea09fb9c1afcfc3ef76e7ee3c7ec60632caf561f9b3985102e7b68cf'

  # goprism.com was verified as official when first introduced to the cask
  url "http://cloud.goprism.com/download/Indigo_#{version.dots_to_underscores}.dmg"
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
