cask 'indigo' do
  version '7.0.0'
  sha256 '42de6136f544b7088db88e98f4e9ba6d79ea1a875bd268667b55565273430cf0'

  # goprism.com was verified as official when first introduced to the cask
  url "http://cloud.goprism.com/download/Indigo_#{version.dots_to_underscores}.dmg"
  name 'Indigo'
  name 'Indigo Domotics'
  homepage 'https://www.indigodomo.com/'

  pkg 'Indigo Installer.pkg'

  uninstall pkgutil:   [
                         "com.perceptiveautomation.pkg.indigo_client#{version.major}",
                         'com.perceptiveautomation.pkg.indigo_drivers',
                         "com.perceptiveautomation.pkg.indigo_server#{version.major}",
                         "com.perceptiveautomation.pkg.indigo_server_plugins#{version.major}",
                         "com.perceptiveautomation.pkg.indigo_server_scripts#{version.major}",
                       ],
            launchctl: 'com.perceptiveautomation.IndigoServer2'

  zap delete: [
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.perceptiveautomation.indigo-client#{version.major}.sfl",
                '~/Library/LaunchAgents/com.perceptiveautomation.IndigoServer2.plist',
                "~/Library/Preferences/com.perceptiveautomation.indigo-client#{version.major}.plist",
                "~/Library/Preferences/Indigo #{version.major} Client Settings.indiPref",

              ]
end
