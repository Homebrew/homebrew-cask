cask 'dendroscope' do
  version '3.7.1'
  sha256 '1f06953744bcf98aef35d1f7edfbdd1408204705153ccb612b7e841233ee5ea9'

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
