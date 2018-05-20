cask 'monogame' do
  version '3.6'
  sha256 '2a948ff5a6e197c9487ec33b0c1cc9943d1f04b61ed15f25cf3942f90e319fc2'

  url "http://www.monogame.net/releases/v#{version}/MonoGame.pkg"
  name 'MonoGame'
  homepage 'http://www.monogame.net/'

  pkg 'MonoGame.pkg'

  uninstall_script = "#{staged_path}/uninstall.sh"

  preflight do
    IO.write uninstall_script, <<~EOS
      #!/bin/bash

      if [ -d '/Applications/Visual Studio.app' ]
      then
        /Applications/Visual\\ Studio.app/Contents/MacOS/vstool setup uninstall MonoDevelop.MonoGame_IDE_VisualStudioForMac -y
      fi

      if [ -d '/Applications/Xamarin Studio.app' ]
      then
        /Applications/Xamarin\\ Studio.app/Contents/MacOS/mdtool setup uninstall MonoDevelop.MonoGame -y
      fi
    EOS
  end

  uninstall pkgutil: 'com.monogame.*',
            script:  {
                       executable: "#{staged_path}/uninstall.sh",
                       sudo:       true,
                     },
            trash:   [
                       '/Library/Frameworks/MonoGame.framework',
                       '/usr/local/bin/mgcb',
                       '/usr/local/bin/monogame-uninstall',
                     ]
end
