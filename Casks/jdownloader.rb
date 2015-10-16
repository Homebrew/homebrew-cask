cask :v1 => 'jdownloader' do
  version :latest
  sha256 :no_check

  url 'http://installer.jdownloader.org/JDownloader09Setup_mac.dmg'
  name 'JDownloader'
  homepage 'http://jdownloader.org/'
  license :gpl

  installer :script => 'JDownloader Installer.app/Contents/MacOS/JavaApplicationStub',
            :args => [ '-q' ]

  caveats <<-EOS.undent
    #{token} requires Java 6+, you can install the latest Java using

      brew cask install java
  EOS

  uninstall :delete => '/Applications/JDownloader.app'
end
