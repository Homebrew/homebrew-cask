cask 'fme-desktop' do
  version '2020.0.1-b20218'
  sha256 '7662db9172aa732c5b2ee144167914d07f0de18fc608d133ac15f112785dd582'

  url "https://downloads.safe.com/fme/2020/fme-desktop-#{version}-macosx.dmg"
  appcast 'https://www.safe.com/support/downloads/',
          configuration: version.major_minor
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
