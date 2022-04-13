cask "dendroscope" do
  version "3.8.2"
  sha256 "d7acc94ad8dfd4c98b697c7679e660991005ac6e2dbddb70983ef81383787328"

  url "https://software-ab.informatik.uni-tuebingen.de/download/dendroscope/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  name "Dendroscope"
  desc "Interactive viewer for rooted phylogenetic trees and networks"
  homepage "https://www.wsi.uni-tuebingen.de/lehrstuehle/algorithms-in-bioinformatics/software/dendroscope/"

  livecheck do
    url "https://software-ab.informatik.uni-tuebingen.de/download/dendroscope3/welcome.html"
    strategy :page_match do |page|
      v = page[/href=.*?Dendroscope_macos_(\d+(?:_\d+)*)\.dmg/i, 1]
      v.tr("_", ".")
    end
  end

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
