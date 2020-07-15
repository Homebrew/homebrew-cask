cask 'fme-desktop' do
  version '2020.1.0.1-b20596'
  sha256 'a631995171133a925b31aa72dfb7919d2b562c0bb17fca56a900a669ec644727'

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
