cask "klayout" do
  on_monterey :or_older do
    on_catalina :or_older do
      version "0.27.13"
      sha256 "25d38cba66f4009f8ed19a755ec73863721a6f2e3b2d57257f077bf71ec5beba"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
          verified: "klayout.org/downloads/MacOS/"
    end
    on_big_sur do
      version "0.27.13"
      sha256 "d0216355390d83954611461ecd93d7cab0a819f7b0f98327b1c42d92da022fa7"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
          verified: "klayout.org/downloads/MacOS/"
    end
    on_monterey do
      version "0.29.6"
      sha256 "2c324dc95d77a0167d6c56608d2beca5f78b5190259480d97ef1500b19bc7389"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5MP-RsysPhb311.dmg",
          verified: "klayout.org/downloads/MacOS/"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura do
    version "0.30.4"
    sha256 "5c432cecff49a27cbad8097bcf6a3169bebfec32ce87b13e92af19440b4a87f7"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Ventura-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Ventura.*?\.dmg/i)
    end
  end
  on_sonoma do
    version "0.30.9"
    sha256 "a918431645627ac5bdb5a407448cb67e3bca6fdbe3384027e2bfa8c2b6bbbe6a"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sonoma-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sonoma.*?\.dmg/i)
    end
  end
  on_sequoia do
    version "0.30.9"
    sha256 "73fcd98f74b563f232e1eae9866bc52957b0d198f02a4570e77f4c9be05d89c5"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sequoia-1-qt5MP-RsysPhb311.dmg",
        verified: "klayout.org/downloads/MacOS/"

    livecheck do
      url "https://www.klayout.de/build.html"
      regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sequoia.*?\.dmg/i)
    end
  end
  on_tahoe :or_newer do
    on_arm do
      version "0.30.9"
      sha256 "5b2807b2e522760535a84fb83828de768995c9b68914b75be14c961d1ea0bc49"

      url "https://www.klayout.org/downloads/MacOS/ARM64/arm64ST-klayout-#{version}-macOS-Tahoe-1-qt5MP-RsysPsys.dmg",
          verified: "klayout.org/downloads/MacOS/ARM64/"

      livecheck do
        url "https://www.klayout.de/build.html"
        regex(/href=.*?arm64ST[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Tahoe.*?\.dmg/i)
      end
    end
    on_intel do
      version "0.30.9"
      sha256 "73fcd98f74b563f232e1eae9866bc52957b0d198f02a4570e77f4c9be05d89c5"

      url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Sequoia-1-qt5MP-RsysPhb311.dmg",
          verified: "klayout.org/downloads/MacOS/"

      livecheck do
        url "https://www.klayout.de/build.html"
        regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]Sequoia.*?\.dmg/i)
      end
    end
  end

  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  depends_on :macos

  suite "KLayout"

  preflight_steps do
    # There is no sub-folder in the DMG; the root *is* the folder
    move_contents ".", "KLayout"
  end

  uninstall quit:    "klayout.de",
            pkgutil: "klayout.de"

  zap trash: "~/.klayout"
end
