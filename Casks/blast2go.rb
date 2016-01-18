cask 'blast2go' do
  version '3.1'
  sha256 '7160b1973437474508a1522cce9bee74e5ddd8f109fc17ddca81e3b914e819d6'

  url "http://download.blast2go.com/html/software/blast2go/latest/#{version.gsub('.', '_')}/Blast2GO_macos_#{version.gsub('.', '_')}.dmg"
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'
  license :freemium

  installer script: 'Blast2GO Installer.app/Contents/MacOS/JavaApplicationStub',
            args:   ['-q']

  uninstall delete: '/Applications/Blast2GO'

  caveats do
    depends_on_java
  end
end
