cask "sencha" do
  version "7.2.0.66"
  sha256 "e93272a168b7afcd64eaa373d93e9d356b2cf03bd19b56b6a976a3c816ef5614"

  url "https://cdn.sencha.com/cmd/#{version}/jre/SenchaCmd-#{version}-osx.app.zip"
  name "Sencha Cmd"
  homepage "https://www.sencha.com/products/sencha-cmd/"

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
