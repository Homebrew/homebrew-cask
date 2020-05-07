cask 'fme-desktop' do
  version '2020.0.2-b20232'
  sha256 'ece0e0808d6832741d8262d67fec28189f040f0ebad19e60154ba855e12fb8f1'

  url "https://downloads.safe.com/fme/#{version.major}/fme-desktop-#{version}-macosx.dmg"
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
