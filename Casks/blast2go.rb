cask 'blast2go' do
  version '5.1.13'
  sha256 'db37cac54493419690419d7d7e17e6c998c8c25e463552ff7b65b3a9e664828d'

  # resources.biobam.com/software/blast2go was verified as official when first introduced to the cask
  url "https://resources.biobam.com/software/blast2go/nico/Blast2GO_macos_#{version.dots_to_underscores}.dmg"
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'

  installer script: {
                      executable: 'Blast2GO Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall delete: '/Applications/Blast2GO'

  caveats do
    depends_on_java
  end
end
