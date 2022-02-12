cask "dendroscope" do
  version "3.8.0"
  sha256 "c8a3aaeb07c22b05fb9059485cf5502b1baee1902eeb6f29e7ce278974846dd3"

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
