cask :v1 => 'kafka-tool' do
  version :latest
  sha256 :no_check

  url 'http://www.kafkatool.com/download/kafkatool.dmg'
  name 'Kafka Tool'
  homepage 'http://www.kafkatool.com/index.html'
  license :commercial

  installer :script => 'Kafka Tool Installer.app/Contents/MacOS/JavaApplicationStub',
            :args => [ '-q' ]

  uninstall :delete => '/Applications/Kafka Tool.app'

  zap :delete => '~/.kafkatool'

  caveats <<-EOS.undent
    #{token} requires Java 8+, you can install the latest Java using
      brew cask install java
  EOS
end
