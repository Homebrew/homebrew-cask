cask 'blast2go' do
  version '5.2.4'
  sha256 '93b0e1461f0a8933f6800c35c112ef51cade16302f90353ea4ae7643c5d5e765'

  # resources.biobam.com/software/blast2go was verified as official when first introduced to the cask
  url "https://resources.biobam.com/software/blast2go/nico/Blast2GO_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.blast2go.com/blast2go-pro/download-b2g'
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'

  installer script: {
                      executable: 'Blast2GO Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       [
                                    '-q',
                                    '-VexecuteLauncherAction$Boolean=false',
                                  ],
                    }

  uninstall delete: '/Applications/Blast2GO',
            quit:   'blast2goID'

  caveats do
    depends_on_java
  end
end
