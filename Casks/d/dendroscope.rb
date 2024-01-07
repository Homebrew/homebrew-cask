cask "dendroscope" do
  version "3.8.10"
  sha256 "463928e19e2c6375519745c209e4969810573f1550e0a67cbb4ce90435a9e182"

  url "https://software-ab.cs.uni-tuebingen.de/download/dendroscope/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  name "Dendroscope"
  desc "Interactive viewer for rooted phylogenetic trees and networks"
  homepage "https://www.wsi.uni-tuebingen.de/lehrstuehle/algorithms-in-bioinformatics/software/dendroscope/"

  disable! date: "2024-01-04", because: "download artifact not available"

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
