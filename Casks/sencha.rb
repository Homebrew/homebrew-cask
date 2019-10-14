cask 'sencha' do
  version '6.7.0.63'
  sha256 '3e888afb613223a7584376fc63c68f06eb6010a996eca82ee7a2e0d78b6658f3'

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
