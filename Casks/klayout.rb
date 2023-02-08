cask "klayout" do
  version "0.28.3"

  on_catalina :or_older do
    sha256 "aa9d1de4cfbaeadc37ec3c47a3185319abdf36cdd854c4d259da5e36f48c277e"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb39.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Catalina.*?\.dmg/i)
    end
  end
  on_big_sur do
    sha256 "a2843c628adb822c643d46af5a5ff8399e441922b916faba8cf40dc477f5228a"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb39.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]BigSur.*?\.dmg/i)
    end
  end
  on_monterey do
    sha256 "c0c462f4f0f306cb252acd97e24b105e5a64734f3b97ad0d4ab2c91749a714bf"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5Brew-RsysPhb39.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Monterey.*?\.dmg/i)
    end
  end
  on_ventura :or_newer do
    sha256 "2c94770b3e363ccb17236fda61d184afc1744d1e206651b81ab6d26fcb47feb0"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Ventura-1-qt5Brew-RsysPhb39.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Ventura.*?\.dmg/i)
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
