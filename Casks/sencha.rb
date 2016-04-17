cask 'sencha' do
  version '6.1.2.15'
  sha256 '8b8ef41800055722698229561575db5d7c62359c87556f3b0a8b77a9b426dc89'

  url "https://cdn.sencha.com/cmd/#{version}/jre/SenchaCmd-#{version}-osx.app.zip"
  name 'Sencha Cmd'
  homepage 'https://www.sencha.com/products/sencha-cmd/'
  license :freemium

  installer script: "SenchaCmd-#{version}-osx.app/Contents/MacOS/JavaApplicationStub",
            args:   ['-Djava.awt.headless=true', '-q', '-dir', "/opt/Sencha/Cmd/#{version}"],
            sudo:   true

  postflight do
    set_ownership '/opt/Sencha'
  end

  uninstall script: {
                      executable: "/opt/Sencha/Cmd/#{version}/.install4j/Sencha Cmd Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-Djava.awt.headless=true', '-q'],
                      sudo:       true,
                    }

  caveats do
    <<-EOS.undent
      Installing this Cask means you have AGREED to the Sencha Cmd License

        http://www.sencha.com/legal/sencha-tools-software-license-agreement/

      Sencha Cmd appends 1 line to your ~/.bash_profile or ~/.profile file:

        export PATH="/opt/Sencha/Cmd:$PATH"

      If you are a zshell user, append both lines to your .zshrc file.
    EOS
  end
end
