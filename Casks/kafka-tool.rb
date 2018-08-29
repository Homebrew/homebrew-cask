cask 'kafka-tool' do
  version :latest
  sha256 :no_check

  url 'http://www.kafkatool.com/download2/kafkatool.dmg'
  name 'Kafka Tool'
  homepage 'http://www.kafkatool.com/index.html'

  installer script: {
                      executable: 'Kafka Tool 2 Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall delete: '/Applications/Kafka Tool.app'

  zap trash: '~/.kafkatool2'

  caveats do
    depends_on_java '8'
  end
end
