cask 'blast2go' do
  version '5.1.1'
  sha256 'e38393288ad869bdd665ad34b40f048e92831277921f284eb70661648a1f9a8e'

  # biobam.com/software/blast2go was verified as official when first introduced to the cask
  url "http://resources.biobam.com/software/blast2go/nico/Blast2GO_macos_#{version.dots_to_underscores}.dmg"
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
