cask :v1 => 'blast2go' do
  version '3.0'
  sha256 '20739dea328c65ab35a7db765e1b7e90e625c39639c0076fcacf43166be1270e'

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
