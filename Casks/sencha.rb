cask 'sencha' do
  version '6.7.0.37'
  sha256 '1965691742306653212696556774c8cfc702aa821898b433840a5b96ded6d5ea'

  url "https://cdn.sencha.com/cmd/#{version}/jre/SenchaCmd-#{version}-osx.app.zip"
  name 'Sencha Cmd'
  homepage 'https://www.sencha.com/products/sencha-cmd/'

  installer script: {
                      executable: "SenchaCmd-#{version}-osx.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-Djava.awt.headless=true', '-q', '-dir', "/opt/Sencha/Cmd/#{version}"],
                      sudo:       true,
                    }

  postflight do
    set_ownership '/opt/Sencha'
  end

  uninstall script: {
                      executable: "/opt/Sencha/Cmd/#{version}/Sencha Cmd Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-Djava.awt.headless=true', '-q'],
                      sudo:       true,
                    }

  caveats do
    license 'https://www.sencha.com/legal/sencha-tools-software-license-agreement/'
    <<~EOS
      Sencha Cmd appends 1 line to your ~/.bash_profile or ~/.profile file:

        export PATH="/opt/Sencha/Cmd:$PATH"

      If you are a zshell user, append both lines to your .zshrc file.
    EOS
  end
end
