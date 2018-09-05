cask 'sencha' do
  version '6.6.0.13'
  sha256 'e9afc8c9f9d2eddf4f41d79869c68c3799ab6f237ba80e002d519cfd5a8a52b5'

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
