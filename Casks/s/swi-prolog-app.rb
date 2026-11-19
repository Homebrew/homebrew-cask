cask "swi-prolog-app" do
  version "11.0.0-1"
  sha256 "6085ea66dc4a08d95a6343df99aa5d9c491faf93504b300cebaab4c59fd69147"

  url "https://www.swi-prolog.org/download/stable/bin/swipl-#{version}.fat.pkg"
  name "SWI-Prolog"
  desc "ISO/Edinburgh-style Prolog interpreter"
  homepage "https://www.swi-prolog.org/"

  livecheck do
    url "https://www.swi-prolog.org/download/stable/bin/"
    regex(/href=["']?swipl[._-]v?(\d+(?:[.-]\d+)+)\.fat\.pkg/i)
  end

  depends_on :macos

  pkg "swipl-#{version}.fat.pkg"
  binary "/Applications/swipl-win.app/Contents/MacOS/swipl"
  binary "/Applications/swipl-win.app/Contents/MacOS/swipl-ld"
  binary "/Applications/swipl-win.app/Contents/MacOS/swipl-win"

  uninstall quit:    "org.swi-prolog.swipl-win",
            pkgutil: "org.swi-prolog.swipl-win.pkg"

  zap trash: "~/.config/swi-prolog",
      rmdir: "~/Prolog"
end
