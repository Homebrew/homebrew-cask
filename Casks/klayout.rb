cask "klayout" do
  version "0.28.2"

  on_catalina :or_older do
    sha256 "25d38cba66f4009f8ed19a755ec73863721a6f2e3b2d57257f077bf71ec5beba"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Catalina.*?\.dmg/i)
    end
  end
  on_big_sur do
    sha256 "42e6b1b2c9a65741f8a96fe2e89e8a75a11f51ee3b1503710a8a70276015447a"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]BigSur.*?\.dmg/i)
    end
  end
  on_monterey :or_newer do
    sha256 "82c8497e83fb741d95f409f7be9b837a42240c25ec25b99a7a441b22a74094bd"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Monterey.*?\.dmg/i)
    end
  end

  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  depends_on macos: ">= :catalina"

  suite "KLayout"

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("KLayout").tap(&:mkpath))
  end

  uninstall pkgutil: "klayout.de",
            quit:    "klayout.de"
end
