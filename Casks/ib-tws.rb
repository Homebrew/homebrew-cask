cask 'ib-tws' do
  version :latest
  sha256 :no_check

  url 'https://download2.interactivebrokers.com/installers/tws/stable/tws-stable-macosx-x64.dmg'
  name 'Interactive Brokers Trader Workstation (Stable Online)'
  homepage 'https://www.interactivebrokers.com/'

  conflicts_with cask:	[
                         'ib-tws-latest',
                         'ib-tws-beta',
                       ]

  installer script: {
                      executable: "#{staged_path}/Trader Workstation Installer.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  uninstall quit:   'com.install4j.5889-6375-8446-2021.22',
            script: {
                      executable: "#{ENV['HOME']}/Applications/Trader Workstation/Trader Workstation Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
