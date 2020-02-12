cask 'dendroscope' do
  version '3.7.0'
  sha256 '371df5b7413843bc5563678a22ae9b5333e9c914fd19341cdb0d30a2fb53f01a'

  url "https://software-ab.informatik.uni-tuebingen.de/download/dendroscope/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://software-ab.informatik.uni-tuebingen.de/download/dendroscope3/welcome.html',
          configuration: version.dots_to_underscores
  name 'Dendroscope'
  homepage 'https://www.wsi.uni-tuebingen.de/lehrstuehle/algorithms-in-bioinformatics/software/dendroscope/'

  installer script: {
                      executable: 'Dendroscope Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall script: {
                      executable: "#{appdir}/Dendroscope/Dendroscope Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  caveats do
    depends_on_java
  end
end
