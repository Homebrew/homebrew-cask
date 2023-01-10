cask "lyx" do
  version "2.3.7"

  on_monterey :or_older do
    sha256 "aaaaa005c5ec4bf574534de31cbd93ab4908dfa655da7535044185874a285c52"
    url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-cocoa.dmg",
        verified: "ftp.lip6.fr/pub/lyx/"
  end
  on_ventura :or_newer do
    sha256 "4a0e5d9ad2d08f2b379892816934b64b99d815eaeede14157c3219f80fe039d2"
    url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-arm64-cocoa.dmg",
        verified: "ftp.lip6.fr/pub/lyx/"
  end

  name "LyX"
  desc "Open source, GUI document processor based on the LaTeX typesetting system"
  homepage "https://www.lyx.org/"

  livecheck do
    url "https://www.lyx.org/Download"
    regex(/LyX-(\d+(?:\.\d+)*)\+qt5/i)
  end

  on_monterey :or_newer do
    depends_on formula: "python"
  end

  app "LyX.app"
  binary "#{appdir}/LyX.app/Contents/MacOS/inkscape", target: "lyx-inkscape"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyx"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyxclient"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyxconvert"
  binary "#{appdir}/LyX.app/Contents/MacOS/lyxeditor"
  binary "#{appdir}/LyX.app/Contents/MacOS/maxima", target: "lyx-maxima"
  binary "#{appdir}/LyX.app/Contents/MacOS/tex2lyx"

  zap trash: [
    "~/Library/Application Support/LyX-#{version.major_minor}",
    "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
    "~/Library/Caches/com.apple.python/Applications/LyX.app",
    "~/Library/Preferences/org.lyx.lyx.plist",
    "~/Library/Saved Application State/org.lyx.lyx.savedState",
  ]
end
