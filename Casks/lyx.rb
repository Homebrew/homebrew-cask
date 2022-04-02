cask "lyx" do
  version "2.3.6.2"
  sha256 "7eb15120428cbb45f5ad0e7e04c7cd314c87dd6657157bf70f5330e3d26811d0"

  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-12-x86_64-cocoa.dmg",
      verified: "ftp.lip6.fr/pub/lyx/"
  name "LyX"
  desc "Open source, GUI document processor based on the LaTeX typesetting system"
  homepage "https://www.lyx.org/"

  livecheck do
    url "https://www.lyx.org/Download"
    regex(/LyX-(\d+(?:\.\d+)*)\+qt5/i)
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
