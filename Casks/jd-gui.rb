cask 'jd-gui' do
  version '1.6.6'
  sha256 'b16ce61bbcfd2f006046b66c8896c512a36c6b553afdca75896d7c5e27c7477d'

  # github.com/java-decompiler/jd-gui/ was verified as official when first introduced to the cask
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'

  app "jd-gui-osx-#{version}/JD-GUI.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/jd-gui.wrapper.sh"
  binary shimscript, target: 'jd-gui'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      nohup #{appdir}/JD-GUI.app/Contents/MacOS/universalJavaApplicationStub "$@" > /dev/null 2>&1 &
    EOS
  end

  zap trash: '~/Library/Saved Application State/jd.jd-gui.savedState'
end
