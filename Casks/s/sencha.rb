cask "sencha" do
  version "7.8.0.59"
  sha256 "28b8f10473fb8f444a265fef74e63d07debe79f64c1e0d73c36e7744937392e2"

  url "https://trials.sencha.com/cmd/#{version.major_minor_patch}/SenchaCmd-#{version}-osx.app.zip"
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
