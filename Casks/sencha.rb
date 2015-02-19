cask :v1 => 'sencha' do
  version '5.1.1.39'
  sha256 'bb3de716b825fe9f8908f96a3f7570499ffbf41bac860a16f57f680b3cd341ad'
  
  url "http://cdn.sencha.com/cmd/#{version}/SenchaCmd-#{version}-osx.app.zip"
  name 'Sencha Cmd'
  homepage 'http://www.sencha.com/products/sencha-cmd/'
  license :freemium

  preflight do
    system "#{staged_path}/SenchaCmd-#{version}-osx.app/Contents/MacOS/installbuilder.sh", '--mode', 'unattended', '--prefix' , "#{staged_path}"
  end

  uninstall :script => {
                         :executable => "Sencha/Cmd/#{version}/uninstall.app/Contents/MacOS/installbuilder.sh",
                         :args => ["--mode", "unattended"]
                       }

  caveats do
    <<-EOS.undent
      Installing this Cask means you have AGREED to the Sencha Cmd License

        http://www.sencha.com/legal/sencha-cmd-license

      Sencha Cmd adds two changes to your ~/.bashrc file:


        export PATH=#{staged_path}/Sencha/Cmd/#{version}:$PATH
        export SENCHA_CMD_3_0_0="#{staged_path}/Sencha/Cmd/#{version}"


      If you are a zshell user, copy at the end of your .zshrc file both lines.
    EOS
  end

end
