cask "dendroscope" do
  version "3.7.3"
  sha256 "fc8f3c4eea513318e4521923086e17f1d81a984b314f92758ba655c917094dc3"

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
