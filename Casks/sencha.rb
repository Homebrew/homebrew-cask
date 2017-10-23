cask 'sencha' do
  version '6.5.2.15'
  sha256 '8095e5ea0e7b5dffb7fb38ce9d68fb8a40e50df885eea42709d62d900ea747af'

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

  caveats <<~EOS
    Installing this Cask means you have AGREED to the Sencha Cmd License

      https://www.sencha.com/legal/sencha-tools-software-license-agreement/

    Sencha Cmd appends 1 line to your ~/.bash_profile or ~/.profile file:

      export PATH="/opt/Sencha/Cmd:$PATH"

    If you are a zshell user, append both lines to your .zshrc file.
  EOS
end
