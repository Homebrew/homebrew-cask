cask 'blast2go' do
  version '4.1'
  sha256 '5bb520f33900544c291f8f968d66072db613a77546aa351afac434581b4b5d95'

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
