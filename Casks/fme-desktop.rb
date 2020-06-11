cask 'fme-desktop' do
  version '2020.0.2.1-b20238'
  sha256 'e8c3264a6de42ff1c32027f3d2fc8478731f1c95c18efaa6640fd892ebaf3d2e'

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
