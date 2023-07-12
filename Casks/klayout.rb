cask "klayout" do
  version "0.28.10"

  on_catalina :or_older do
    sha256 "57ad9ad969ed8e83f4ca8c4e06ae09e15ecd28f83d7f2e698f7927c4c0800d5d"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb39.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Catalina.*?\.dmg/i)
    end
  end
  on_big_sur do
    sha256 "b6c8868b86df0efcb973ef4b2f515c7233ca822fe52928538f0a40543ec29104"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb39.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]BigSur.*?\.dmg/i)
    end
  end
  on_monterey do
    sha256 "8db93709b39e4ec0ec252f23a774a803e00163fc11ce4a9d85b696306ee33249"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5Brew-RsysPhb39.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Monterey.*?\.dmg/i)
    end
  end
  on_ventura :or_newer do
    sha256 "9ebc36c55ec84bd02577024cd634970ab09140816d9d04e7dc7273353323f3fc"

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

  zap trash: "~/.klayout"
end
