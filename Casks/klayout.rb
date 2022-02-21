cask "klayout" do
  version "0.27.8"

  if MacOS.version <= :catalina
    sha256 "d838dd171d6a759142136097da78e923508c62b3750ae9c09b7bcd06e3bc860e"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  elsif MacOS.version <= :big_sur
    sha256 "398524660a4fab288190791f57d34262b120faf6bb19c024b438826edb0a7d28"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  else
    sha256 "a5047a1058a8795f06ae7b26cce417ac093eee42b0fdd6d0bac86efaf5a003f4"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  end

  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  livecheck do
    url "https://github.com/KLayout/klayout/"
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
