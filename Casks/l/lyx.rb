cask "lyx" do
  version "2.4.4"
  sha256 "8f92befe0df9da6f251a5a04a8ef536a03a354cfbb4e6f87dd80e76fa92871c0"

  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-arm64-cocoa.dmg",
      verified: "ftp.lip6.fr/pub/lyx/bin/"
  name "LyX"
  desc "GUI document processor based on the LaTeX typesetting system"
  homepage "https://www.lyx.org/"

  livecheck do
    url "https://www.lyx.org/Download"
    regex(/LyX[._-]v?(\d+(?:\.\d+)+)\+qt5/i)
  end

  depends_on macos: ">= :mojave"

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
    "~/Library/Caches/com.apple.python/Applications/LyX.app",
    "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
    "~/Library/Preferences/org.lyx.lyx.plist",
    "~/Library/Saved Application State/org.lyx.lyx.savedState",
  ]
end
