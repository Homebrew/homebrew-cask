cask 'fme-desktop' do
  version '2020.0.3-b20252'
  sha256 'c60fcfa3184da26a90f4cd1a42ea26cab95505348de8b978674fbf1ff8f99f9a'

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version}-macosx.dmg"
  appcast 'https://www.safe.com/support/downloads/',
          must_contain: version.major_minor
  name 'FME Desktop'
  homepage 'https://www.safe.com/'

  installer script: {
                      executable: 'FME Desktop Installer.app/Contents/MacOS/applet',
                      sudo:       true,
                    }

  uninstall quit:   [
                      'com.safe.fmeworkbench',
                      'com.safe.datainspector',
                      'com.safe.fmequicktranslator',
                      'com.safe.fmehelp',
                    ],
            delete: [
                      "/Applications/FME #{version.major_minor}",
                      "/Library/FME/#{version.major_minor}",
                    ]

  zap trash: [
               '~/Library/Application Support/FME',
               '~/Library/Application Support/FME Desktop Help',
               '~/Library/Application Support/FME Help',
               '~/Library/Application Support/FME Workbench',
             ]
end
