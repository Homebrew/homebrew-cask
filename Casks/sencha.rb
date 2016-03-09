cask 'sencha' do
  version '6.0.2.14'
  sha256 '7d131f333585ed74a31c4c4efa9ecc5176cf5d5410eeddb631c974a847216cec'

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
