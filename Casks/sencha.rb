cask "sencha" do
  version "7.7.0.36"
  sha256 "ce90a05124d257c543d74dfd890c58704d34cb6ff15453252cbb9ecf0dd61b81"

  url "https://trials.sencha.com/cmd/#{version.major_minor_patch}/SenchaCmd-#{version}-osx.app.zip"
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
