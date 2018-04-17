cask 'kafka-tool' do
  version :latest
  sha256 :no_check

  url 'http://www.kafkatool.com/download/kafkatool.dmg'
  name 'Kafka Tool'
  homepage 'http://www.kafkatool.com/index.html'

  installer script: {
                      executable: 'Kafka Tool Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall delete: '/Applications/Kafka Tool.app'

  zap trash: '~/.kafkatool'

  caveats do
    depends_on_java('8')
  end
end
