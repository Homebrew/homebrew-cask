cask 'blast2go' do
  version '5.2.0'
  sha256 'fd1a77dc6fd562f9f36b5d046eb0a0d8cf7193914038fcc51a599fb2a764aeab'

  # resources.biobam.com/software/blast2go was verified as official when first introduced to the cask
  url "http://resources.biobam.com/software/blast2go/nico/Blast2GO_macos_#{version.dots_to_underscores}.dmg"
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'

  installer script: {
                      executable: 'Blast2GO Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall delete: '/Applications/Blast2GO',
            quit:      'blast2goID'

  caveats do
    depends_on_java
  end
end
