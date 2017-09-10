cask 'indigo' do
  version '7.0.4'
  sha256 '13a22988a397f4fb1f84f8f237a5b66169293e09d27e78330863657927b3294b'

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
