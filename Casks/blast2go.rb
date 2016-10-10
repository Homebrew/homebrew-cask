cask 'blast2go' do
  version '3.3'
  sha256 'af181ff39556e15dc012a45a07744475f284e730095f39cc892d30d7342aa2e9'

  url "http://download.blast2go.com/html/software/blast2go/latest/#{version.dots_to_underscores}/Blast2GO_macos_#{version.dots_to_underscores}.dmg"
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'

  installer script: 'Blast2GO Installer.app/Contents/MacOS/JavaApplicationStub',
            args:   ['-q'],
            sudo:   false

  uninstall delete: '/Applications/Blast2GO'

  caveats do
    depends_on_java
  end
end
