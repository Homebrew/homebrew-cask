cask :v1 => 'blast2go' do
  version '3.1'
  sha256 '7160b1973437474508a1522cce9bee74e5ddd8f109fc17ddca81e3b914e819d6'

  url "http://download.blast2go.com/html/software/blast2go/latest/#{version.gsub('.','_')}/Blast2GO_macos_#{version.gsub('.','_')}.dmg"
  name 'Blast2GO'
  homepage 'https://www.blast2go.com/'
  license :freemium

  installer :script => 'Blast2GO Installer.app/Contents/MacOS/JavaApplicationStub',
            :args => [ '-q' ]

  caveats <<-EOS.undent
    #{token} requires Java 6+, you can install the latest Java using

      brew cask install java
  EOS

  uninstall :delete => '/Applications/Blast2GO'
end
