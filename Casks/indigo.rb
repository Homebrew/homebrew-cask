cask 'indigo' do
  version '7.4.0'
  sha256 '0ca247789a7e6c2bdacdde086829e93b1c117c3fa94e2202fb548d37a059e8c6'

  # goprism.com was verified as official when first introduced to the cask
  url "http://cloud.goprism.com/download/Indigo_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.indigodomo.com/downloads.html',
          configuration: version.major_minor
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
