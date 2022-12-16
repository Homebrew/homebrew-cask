cask "kieler" do
  version "1.2.0"
  sha256 "1f790a3cb716e4ddf2231e28fd63bfd766c6b9d51ce553fa73ba071adf2ba763"

  url "https://rtsys.informatik.uni-kiel.de/~kieler/files/release_sccharts_#{version}/sccharts_rca_#{version}-macosx.cocoa.x86_64.tar.gz"
  name "kieler"
  desc "Graphical model-based design tool"
  homepage "https://rtsys.informatik.uni-kiel.de/confluence/display/KIELER"

  livecheck do
    url "https://rtsys.informatik.uni-kiel.de/confluence/display/KIELER/Downloads"
    regex(/href=.*?sccharts[._-]rca[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]cocoa[._-]x86[._-]64\.t/i)
  end

  app "kieler.app"

  zap trash: [
    "~/Library/Caches/de.cau.cs.kieler.product",
    "~/Library/Preferences/de.cau.cs.kieler.product.plist",
    "~/Library/Saved Application State/de.cau.cs.kieler.product.savedState",
  ]

  caveats <<~EOS
    According to the vendor (https://rtsys.informatik.uni-kiel.de/confluence/display/KIELER/Downloads#Downloads-StandaloneApplications),
    the quarantine attribute breaks the app and might need modifications.
  EOS
end
