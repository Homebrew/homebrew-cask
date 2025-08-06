cask "sencha" do
  version "7.9.0.35"
  sha256 "de8bb1e5cb7541312b963161d5f283ea350b49c1baf6a2c43301237a7b705ed4"

  url "https://trials.sencha.com/cmd/#{version.major_minor_patch}/jre/SenchaCmd-#{version}-osx.app.zip"
  name "Sencha Cmd"
  desc "Productivity and performance optimisation tool for Sencha Ext JS"
  homepage "https://www.sencha.com/products/sencha-cmd/"

  livecheck do
    skip "No reliable way to get version info"
  end

  installer script: {
    executable: "SenchaCmd-#{version}-osx.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-Djava.awt.headless=true", "-q", "-dir", "/opt/Sencha/Cmd/#{version}"],
    sudo:       true,
  }

  postflight do
    set_ownership "/opt/Sencha"
  end

  uninstall script: {
    executable: "/opt/Sencha/Cmd/#{version}/Sencha Cmd Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-Djava.awt.headless=true", "-q"],
    sudo:       true,
  }

  # No zap stanza required

  caveats do
    license "https://www.sencha.com/legal/sencha-tools-software-license-agreement/"
    <<~EOS
      Sencha Cmd appends 1 line to your ~/.bash_profile or ~/.profile file:

        export PATH="/opt/Sencha/Cmd:$PATH"

      If you are a zshell user, append both lines to your .zshrc file.
    EOS
  end
end
