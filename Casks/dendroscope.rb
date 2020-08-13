cask "dendroscope" do
  version "3.7.2"
  sha256 "3110de5fe27dab6af5139302ba990b68b285c67d555c3b9ea5031b44f6f4cfd6"

  url "https://software-ab.informatik.uni-tuebingen.de/download/dendroscope/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  appcast "https://software-ab.informatik.uni-tuebingen.de/download/dendroscope3/welcome.html",
          must_contain: version.dots_to_underscores
  name "Dendroscope"
  homepage "https://www.wsi.uni-tuebingen.de/lehrstuehle/algorithms-in-bioinformatics/software/dendroscope/"

  installer script: {
    executable: "Dendroscope Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall script: {
    executable: "#{appdir}/Dendroscope/Dendroscope Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  caveats do
    depends_on_java
  end
end
