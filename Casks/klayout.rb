cask "klayout" do
  version "0.27.11"

  if MacOS.version <= :catalina
    sha256 "372c53e6ec7f79cdf86612fa8d3a8a719a7d75eedc940e61b71bc15d22a53b26"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  elsif MacOS.version <= :big_sur
    sha256 "ca8939d4838f59412fc446209df249dda47e4b576c49856e9657318145bfc290"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  else
    sha256 "b08e25589576bbf056fdcaa1562129583cabd3e72778da0a1a3cc25c394b8add"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  end

  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  livecheck do
    url "https://www.klayout.de/development.html"
    regex(%r{<b>Version\s+(\d+(?:\.\d+)+)</b>}i)
  end

  depends_on macos: ">= :catalina"

  suite "KLayout"

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("KLayout").tap(&:mkpath))
  end

  uninstall pkgutil: "klayout.de",
            quit:    "klayout.de"
end
