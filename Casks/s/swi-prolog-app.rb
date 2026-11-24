cask "swi-prolog-app" do
  version "11.0.1-1"
  sha256 "28e54d8f9dbb500a101eed44fa620b6a95567f8d058f921075f215c28f2db711"

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
