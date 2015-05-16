cask :v1 => 'sencha' do
  version '5.1.1.39'
  sha256 'bb3de716b825fe9f8908f96a3f7570499ffbf41bac860a16f57f680b3cd341ad'

  url "http://cdn.sencha.com/cmd/#{version}/SenchaCmd-#{version}-osx.app.zip"
  name 'Sencha Cmd'
  homepage 'http://www.sencha.com/products/sencha-cmd/'
  license :freemium

  installer :script => "SenchaCmd-#{version}-osx.app/Contents/MacOS/installbuilder.sh",
            :args   => ['--mode', 'unattended', '--prefix', '/opt']

  uninstall :script => {
                         :executable => "/opt/Sencha/Cmd/#{version}/uninstall.app/Contents/MacOS/installbuilder.sh",
                         :args => ['--mode', 'unattended']
                       }

  postflight do
    system  '/usr/bin/sudo', '-E', '--',
            '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", '/opt/Sencha'
  end

  caveats do
    <<-EOS.undent
      Installing this Cask means you have AGREED to the Sencha Cmd License

        http://www.sencha.com/legal/sencha-cmd-license

      Sencha Cmd appends 2 lines to your ~/.bashrc or ~/.profile file:

        export PATH=/opt/Sencha/Cmd/#{version}:$PATH
        export SENCHA_CMD_3_0_0="/opt/Sencha/Cmd/#{version}"

      If you are a zshell user, append both lines to your .zshrc file.
    EOS
  end
end
