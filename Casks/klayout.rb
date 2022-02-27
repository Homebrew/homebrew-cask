cask "klayout" do
  version "0.27.8"

  if MacOS.version <= :catalina
    sha256 "7e7b515f2e0a735ce57f247a1a51e4f1b37b71d73dac5fb931c4e428ed38ff0b"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  elsif MacOS.version <= :big_sur
    sha256 "398524660a4fab288190791f57d34262b120faf6bb19c024b438826edb0a7d28"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  else
    sha256 "7258bfad9ec1678bc49f2ab24e02f523cd7d901b835993ec31698b7337ca9d44"

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
