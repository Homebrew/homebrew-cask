cask "dendroscope" do
  version "3.8.8"
  sha256 "9b74a2032e62727539d27f2ba39f78f1a9f2811fc9ab6ccb0ef3f7b51c8437ed"

  url "https://software-ab.cs.uni-tuebingen.de/download/dendroscope/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  name "Dendroscope"
  desc "Interactive viewer for rooted phylogenetic trees and networks"
  homepage "https://www.wsi.uni-tuebingen.de/lehrstuehle/algorithms-in-bioinformatics/software/dendroscope/"

  livecheck do
    url "https://software-ab.cs.uni-tuebingen.de/download/dendroscope3/welcome.html"
    regex(/href=.*?Dendroscope_macos_(\d+(?:_\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
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
