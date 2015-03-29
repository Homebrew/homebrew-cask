cask :v1 => 'blast2go' do
  version '3.0'
  sha256 '79ca1eadae292c55c0b9df5b6a97b727536ee835b90d8ca4f764eb9954c54c18'

  url 'http://download.blast2go.com/html/software/blast2go/latest/3_0/Blast2GO_macos_3_0.dmg'
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
