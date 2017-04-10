cask 'blast2go' do
  version '4.0'
  sha256 '207c5b851e6e3ed049a170570faa6d0bdb3f27320c59f29920b4ebe12c56ff0c'

  url "http://download.blast2go.com/html/software/blast2go/latest/#{version.dots_to_underscores}/Blast2GO_macos_#{version.dots_to_underscores}.dmg"
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
