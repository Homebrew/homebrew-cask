cask "sencha" do
  version "7.5.1.20"
  sha256 "7bd9c132386e0f13a1fa95de37944fca3a13648ef24df70f1a17a962521fe53c"

  url "https://trials.sencha.com/cmd/#{version.major_minor_patch}/jre/SenchaCmd-#{version}-osx.app.zip"
  name "Sencha Cmd"
  desc "Productivity and performance optimization tool for Sencha Ext JS"
  homepage "https://www.sencha.com/products/sencha-cmd/"

  livecheck do
    url "https://www.sencha.com/products/extjs/cmd-download/"
    regex(/href=.*?SenchaCmd[._-]v?(\d+(?:\.\d+)+)[._-]osx\.app\.zip/i)
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

  caveats do
    license "https://www.sencha.com/legal/sencha-tools-software-license-agreement/"
    <<~EOS
      Sencha Cmd appends 1 line to your ~/.bash_profile or ~/.profile file:

        export PATH="/opt/Sencha/Cmd:$PATH"

      If you are a zshell user, append both lines to your .zshrc file.
    EOS
  end
end
