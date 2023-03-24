cask "dendroscope" do
  version "3.8.5"
  sha256 "faf13819853b1d03a5d4476cff86ced43d3ee696f9e42f1f0bf3669f07e9d0d5"

  url "https://software-ab.cs.uni-tuebingen.de/download/dendroscope/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  name "Dendroscope"
  desc "Interactive viewer for rooted phylogenetic trees and networks"
  homepage "https://www.wsi.uni-tuebingen.de/lehrstuehle/algorithms-in-bioinformatics/software/dendroscope/"

  livecheck do
    url "https://software-ab.cs.uni-tuebingen.de/download/dendroscope3/welcome.html"
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

  zap trash: "~/Library/Preferences/Dendroscope.def"

  caveats do
    depends_on_java
  end
end
